class GamesController < ApplicationController
before_action :check_for_login, :only => [:edit, :update]
before_action :check_for_admin, :only => [:index]

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def edit
    @game = Game.find params[:id]
  end

  def search
    # @games = Game.find_by :name => params[:name]
    puts "some string"
    @games = Game.where('name ILIKE ?', "%#{params[:name]}%")
    render :search

  end

  def create
    game = Game.create game_params
    redirect_to game
  end

  def update
    game = Game.find params[:id]
    game.update game_params
    redirect_to games_stock_path
  end

  def stock
    @game = Game.all.order :id
  end

  def add
    @game = Game.find params[:id]
    @game.stock += 1
    @game.save
    redirect_back(fallback_location: games_stock_path)
    # @game.update  :stock => @game.stock + 1

  end

  def sub
    @game = Game.find params[:id]
    @game.stock -= 1
    @game.save
    redirect_back(fallback_location: games_stock_path)
    # @game.update  :stock => @game.stock - 1
  end

  def show
     @game = Game.find params[:id]
     # videos = Yt::Collections::Videos.new
    # @id = videos.where(q: @game.name + ' Original Trailer', order: 'viewCount').first.id
   end

  def destroy
    session[:game_id] = nil
    redirect_to login_path
  end

  private
  def game_params
    params.require(:game).permit(:name, :release_date, :price, :description, :image, :stock)
  end
end
