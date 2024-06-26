class SessionsController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.find_by(username: params[:user][:username])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to root_url
    else
      redirect_to '/signin'
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
