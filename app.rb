require 'sinatra/base'

class Controller < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/welcome' do
    @name = params[:enter_name]
    erb :play
  end

  run! if app_file == $0
end
