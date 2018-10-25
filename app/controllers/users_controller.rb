class UsersController < ApplicationController

  get '/users/login' do
    erb :'/users/login'
  end

  get '/signup' do
    if session[:id] = "" || session[:id] = nil
      erb :signup
    else
      redirect to "/tweets"
    end
  end

  get '/failure' do
    erb :failure
  end

  post '/signup' do
      if params[:username] == "" || params[:email] == "" || params[:password] == ""
          redirect to "/signup"
      else
          @user = User.create(params)
          session[:id] = @user.id
          binding.pry
          redirect to "/tweets"
        end
  end

end
