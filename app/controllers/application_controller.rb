require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "secret"
  end

  get "/" do
    if !logged_in? 
      erb :index 
    else 
      redirect '/users/home'
    end 
  end

  helpers do 
    def logged_in? 
      !!current_user
    end 

    def current_user 
      @current_user ||= User.find_by(email: params[:email])
    end

  end 

end
