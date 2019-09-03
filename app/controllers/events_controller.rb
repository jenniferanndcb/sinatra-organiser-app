class EventsController < ApplicationController 

  get '/events' do 
    # if !logged_in? 
    #   redirect '/login'
    # else 
    #   @user = User.find(session[:user_id])
      erb :'events/index'
    # end 
  end 

end 