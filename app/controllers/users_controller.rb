class UsersController < ApplicationController 

  get '/signup' do 
    erb :'users/signup'
  end 

  get '/login' do 
    erb :'users/login'
  end 

  post '/signup' do 
    if params[:email] == "" || params[:password] == ""
      redirect '/signup'
    else 
      User.create(email: params[:email], first_name: params[:first_name], household_name: params[:household_name], password: params[:password])
      redirect '/login' 
    end 
  end 

  post '/login' do 
    # user = User.find_by(email: params[:email])

    # if user && user.authenticate(params[:password])
    #   session[:user_id] = user.id

      user = User.find_by(email: params[:email])
      
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id 
      
      redirect '/events'
     
      # redirect '/events'
    # else
    #   redirect '/login'
    end
   
  end 

end 