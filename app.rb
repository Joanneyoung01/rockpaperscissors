require 'sinatra/base'

class Rockpaperscissors < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post "/greeter" do
    @name = params[:name]
    erb(:gamepage)
  end

  run! if app_file == $0
end