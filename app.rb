require 'sinatra/base'
require 'sinatra/reloader'
require 'player'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get "/" do
    # "Testing infrastructure working!"
    erb :index
  end 

  post "/names" do
    session[:first_name] = params[:first_name]
    session[:second_name]= params[:second_name]
    redirect "/play"
  end

  get "/play" do
    @player1 = session[:first_name]
    @player2 = session[:second_name]
    erb :play
  end

  get "/attack" do
    @player1 = session[:first_name]
    @player2 = session[:second_name]
    erb :attack
  end


  run! if app_file == $0
end
