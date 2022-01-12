require 'sinatra/base'
require 'sinatra/reloader'


class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    # "Testing infrastructure working!"
    erb :index
  end 

  post "/names" do
    @player1 = params[:first_name]
    @player2 = params[:second_name]
    erb :play
  end


  run! if app_file == $0
end