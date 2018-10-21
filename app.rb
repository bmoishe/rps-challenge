require 'sinatra/base'
require './lib/players.rb'
require './lib/game.rb'

class Controller < Sinatra::Base
  enable :sessions
  # attr_accessor :choice

  get '/' do
    erb :mode
  end

  post '/game-setup' do
    session[:mode_type] = params[:mode_type]
    session[:player] = 1

    if session[:mode_type] == "Vs"
      redirect '/welcome'
    else
      redirect '/welcome-bot'
    end
  end

  get '/welcome' do
    erb :welcome
  end

  get '/welcome-bot' do
    erb :welcome_bot
  end

  post '/store-names' do
    session[:enter_name] = params[:enter_name]
    session[:enter_name2] = params[:enter_name2]

    @@game = Game.new(session[:enter_name], session[:enter_name2])

    redirect '/play'
  end

  get '/play' do
    if session[:player] == 1
      @player_name = @@game.player1.pname
    else
      @player_name = @@game.player2.pname
    end

    erb :play
  end

  post '/store-weapon' do
    if session[:player] == 1
      @@game.player1.choice = params[:choice]
    end

    if session[:mode_type] == "Vs"
      if session[:player] == 1
        session[:player] = 2
        redirect '/play'
      else
        @@game.player2.choice = params[:choice]
      end
    end

    redirect '/results'
  end

  get '/results' do
    @choice1 = @@game.player1.choice

    if session[:mode_type] == "Vs"
      @choice2 = @@game.player2.choice
      @opponent = "Player #{+ @@game.player2.pname}"
    else
      @choice2 = @@game.player1.bot_choice
      @opponent = "Bot"
    end
    @winner = @@game.winner
    erb :results

  end

  run! if app_file == $0
end
