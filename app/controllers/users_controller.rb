class UsersController < ApplicationController 

  get '/signup' do 
    erb :'users/signup'
  end 

  get '/login' do 
    if !logged_in? 
      erb :'users/login'
    else 
      redirect '/users/home'
    end 
  end 

  post '/signup' do 
    if params[:email] == "" || params[:password] == ""
      redirect '/signup'
    else 
      @user = User.new(email: params[:email], first_name: params[:first_name], household_name: params[:household_name], password: params[:password])
      @user.save 
      session[:user_id] = @user.id
      redirect '/users/home' 
    end 
  end 

  post '/login' do 
   
   user = User.find_by_email(params[:email])
  
    if user
       
      session[:user_id] = user.id 
     
      redirect '/users/home'
    else
      redirect '/login'
   
    end
  end 

  get '/users/home' do 
    @user = User.find(session[:user_id])
    erb :'/events/index'
  end 

  get '/logout' do 
    logout!
  end 

end 