require 'sinatra/base'
require_relative "./lib/game"

class Rockpaperscissors < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post "/greeter" do
    @name = params[:name]
    erb(:gamepage)
  end

  post "/whatmove" do
    @move = params[:move]
    @game = Game.new.result(@move)
    erb(:playpage)
  end

  run! if app_file == $0
end