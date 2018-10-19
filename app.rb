require 'sinatra/base'

class Controller < Sinatra::Base
  enable :sessions

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

  post '/play' do
    session[:enter_name] = params[:enter_name]
    erb :play
  end

  post '/results' do
    session[:choice] = params[:choice]
    erb :results
  end


  run! if app_file == $0
end
