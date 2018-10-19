require 'sinatra/base'

class Controller < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/welcome' do
    session[:enter_name] = params[:enter_name]
    redirect :play
  end

  get '/play' do
    @name = session[:enter_name]
    erb :play
  end

  run! if app_file == $0
end
