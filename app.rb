require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do

    erb :index
  end

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  post '/checkout' do
    binding.pry
    @session = session
    session["item"] = "secret"
    erb :checkout
  end

end
