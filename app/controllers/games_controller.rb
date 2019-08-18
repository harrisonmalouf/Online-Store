class GamesController < ApplicationController
# before_action :check_for_login, :only => [:edit, :update]
# before_action :check_for_admin, :only => [:index]
  def method_name
    @game = Game.all
  end
  def show
    @game = Game.find params[:id]
  end

  def new
    @games = Game.new
  end

  def edit
    @game = Game.find params[:id]
  end

  def create
    @game = Game.new game_params

    if @game.save
      session[:name] = @game.id
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    session[:game_id] = nil
    redirect_to login_path
  end

  private
  def game_params
    params.require(:game).permit(:name, :release_date, :price, :description, :genre)
  end

end
