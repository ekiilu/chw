class SessionsController < ApplicationController
skip_before_filter :authorize

def new
end 

def  create
  if user = User.authenticate(params[:name],params[:password])
	session[:user_id] = user.id
        session[:user_name] = params[:name]
	redirect_to admin_url
  else
	redirect_to login_url, :alert => "Invalid User/password combination"
  end

  def destroy
	session[:user_id] = nil
	redirect_to store_url, :notice => "Logged out"
  end
end
end 

