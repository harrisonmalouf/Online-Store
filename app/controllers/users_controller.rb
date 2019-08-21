class UsersController < ApplicationController
  before_action :check_for_login, :only => [:edit, :update]
  before_action :check_for_admin, :only => [:index]

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
       session[:user_id] = @user.id
       redirect_to root_path
     else
       render :new
     end
  end

  def edit
    @user = User.find(session[:user_id])
  end
  def show
    @user = User.find params[:id]
  end
  def update
    @current_user = User.find params[:id]
    @current_user.update user_params
    redirect_to user_path
  end

  private
  def user_params
    params.require(:user).permit(:email, :user_name, :address, :password, :password_confirmation)
  end
end
