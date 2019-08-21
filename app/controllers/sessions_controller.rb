class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    # find the user by their email address
    user = User.find_by :email => params[:email]
    # encrypted password matches the encryped password in the database
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "User created!"
      redirect_to root_path
    else
      flash[:error_message] = "Invalid email or password"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
