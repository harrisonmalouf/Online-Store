class UserController < ApplicationController
  before_action :check_for_login, :only => [:edit, :update]
  before_action :check_for_admin, :only => [:index]

  def index
    @users = User.all
  end

  def new
    @User = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
       session[:user_id] = @user.id
       redirect_to root_path
     else
       render: new
     end
  end

  def edit
    @user = @current_user
  end

  def update
    @current_user.update user_params
    redirect_to root_path
  end

  private
  def users_params
    params.require(:user).permit(:email, :user_name, :address, :password, :password_confirmation)
  end
end
