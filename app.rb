require 'sinatra/base'
require './lib/players.rb'

class Controller < Sinatra::Base
  enable :sessions
  attr_reader :choice1
  get '/' do
    erb :mode
  end

  post '/game-setup' do
    session[:mode_type] = params[:mode_type]
    redirect '/welcome'
  end

  get '/welcome' do
    erb :welcome
  end

  post '/store-names' do
    session[:enter_name] = params[:enter_name]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/store-weapon' do
    session[:choice] = params[:choice]
    $bot = Players.new


    redirect '/results'
  end

  get '/results' do
@choice1 = session[:choice]
@bot_choice = $bot.bot_choice

    erb :results

  end

  run! if app_file == $0
end
