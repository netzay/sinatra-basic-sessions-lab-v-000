require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    session["item"] = item
    @session = session
    erb :index
  end

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  post '/checkout' do
    @item = Session.new(params[:item])

    erb :checkout
  end

end
