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
    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source => params[:stripeToken]
    )
    charge = Stripe::Charge.create(
      :customer => customer.id,
      :amount => @amount,
      :description => 'Games Ordering',
      :currency => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to :root

    if @order.save
      redirect_to :root
    else
      render :new
    end
  end


end
