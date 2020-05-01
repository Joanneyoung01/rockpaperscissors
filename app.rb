require 'sinatra/base'

class Rockpaperscissors < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post "/greeter" do
    @name = params[:name]
    # @new = Birthday_calc.new.birthday?(@date,@month)
    erb(:gamepage)
  end

#   # start the server if ruby file executed directly
  run! if app_file == $0
end