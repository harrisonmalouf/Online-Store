class GamesController < ApplicationController
# before_action :check_for_login, :only => [:edit, :update]
# before_action :check_for_admin, :only => [:index]
  def index
    @games = Game.all
  end

  def new
    @games = Game.new
  end

  def edit
    @games = Game.find params[:id]
  end

  def create
    game = Game.create game_params
    redirect_to game
  end

  def show
     @games = Game.find params[:id]

  end

  def destroy
    session[:game_id] = nil
    redirect_to login_path
  end

  private
  def game_params
    params.require(:game).permit(:name, :release_date, :price, :description)
  end
end
