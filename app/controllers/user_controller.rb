class UserController < ApplicationController
  def index
  end

  def new
    @User = User.new
  end

  def create
    @user = User.new user_params
  end

  def edit
  end

  def show
  end
end
