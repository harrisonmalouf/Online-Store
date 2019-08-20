class OrdersController < ApplicationController
  def new
    @order = Order.new
    @game = Game.first
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
    @amount = 500
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
  end


end
