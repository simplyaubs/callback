class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Successfully signed in!"
      redirect_to root_path
    else
      flash[:notice] = "Invalid Email or Password"
      render "new"
    end
  end

  def destroy
    session.clear
    flash[:notice] = "Successfully signed out!"
    redirect_to root_path
  end

end