class EventsController < ApplicationController 

  get '/events' do 
    # if !logged_in? 
    #   redirect '/login'
    # else 
      @user = User.find(session[:user_id])
      erb :'events/index'
    # end 
  end 

  get '/events/new' do 
    erb :'events/new'
  end 

  post '/events' do 
    if params != " "
      @user = User.find(session[:user_id])
      @user.events << Event.create(description: params[:description],attendee: params[:attendee], date_from: params[:date_from], date_to: params[:date_to], time: params[:time])
    
      redirect '/events'
    else 
      redirect '/events/new'
    end 
  end 

  

end 