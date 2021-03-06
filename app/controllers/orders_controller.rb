class OrdersController < ApplicationController
  def new
    @order = Order.new
    @game = Game.find params[:game]
    session[:game_id] = params[:game]
  end

  def index
    @orders = Order.all
  end

  def show
    # Stripe::Order.list(limit: 3)
    @id = params[:id]
    @game = params[:name]
  end

  def edit
    @order = Order.find(order_id)
  end

  def create
    @game = Game.find session[:game_id]
    @game.stock -= 1
    @game.save
  #  @game.update  :stock => @game.stock - 1

    @amount = 500
    # @amount = @amount * 100

  end


end
