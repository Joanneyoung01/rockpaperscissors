require 'sinatra/base'
require 'shotgun'

class Birthday < Sinatra::Base
  get '/' do
    p params
    erb(:index)
  end

  post "/getdate" do
    p params
    @name = params[:name]
    @date = params[:date]
    @month = params[:month]
    

    erb(:birthday)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end