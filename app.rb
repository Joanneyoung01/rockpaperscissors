require 'sinatra/base'
require 'shotgun'

class Birthday < Sinatra::Base
  get '/' do
    'Testing infrastructure working!'
    erb(:index)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end