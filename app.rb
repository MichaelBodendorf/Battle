require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/player'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    # "Testing infrastructure working!"
    erb :index
  end 

  post "/names" do
    $player_1 = Player.new(params[:first_name])
    $player_2 = Player.new(params[:second_name])
    redirect "/play"
  end

  get "/play" do
    @player1 = $player_1
    @player2 = $player_2
    erb :play
  end

  get "/attack" do
    @player1 = $player_1
    @player2 = $player_2
    erb :attack
  end


  run! if app_file == $0
end
