class EventsController < ApplicationController 

  get '/events' do 
    # if !logged_in? 
    #   redirect '/login'
    # else 
      @user = User.find(session[:email])
      erb :'events/index'
    # end 
  end 

  get '/events/new' do 
    erb :'events/new'
  end 

end 