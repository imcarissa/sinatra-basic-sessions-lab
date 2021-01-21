require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :sessions_secret, "223344abc"
    end

    get '/' do
        @session = session
        erb :index
    end

    post '/checkout' do
        session[:item] = params[:item]
        erb :checkout  
    end
end