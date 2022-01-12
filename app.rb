require 'sinatra/base'
require 'sinatra/reloader'


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


  run! if app_file == $0
end


# Write a get '/play route that renders the play.erb view you already wrote
# In the get '/play' route, extract the instance variables required by the view from the session
# Remove the erb :play expression from the post '/names' route, and replace it with a redirect to the '/play' route