class OrdersController < ApplicationController
  def new
    @order = Order.new
    @game = Game.find params[:game]
  end

  def index
    @orders = Order.all
  end

  def show
  end

  def edit
    @order = Order.find(order_id)
  end


  def create
    StripeChargesServices.new(charges_params, user).call
    redirect_to orders_path
  end

private
def charges_params
  params.permit(:stripeEmail, :stripeToken, :order_id)
end

def game_params
  params.require(:game).permit(:name, :price, :image)
end

  def catch_exception(exception)
    flash[:error] = exception.message
  end

# def initialize(params, user)
#   @stripe_email = params[:stripeEmail]
#   @stripe_token = params[:stripeToken]
#   @order = params[:order_id]
#   @user = user
# end
#
# def call
#   create_payment(find_user)
# end

attr_accessor :user, :stripe_email, :stripe_token, :order

def find_customer
  if user.stripe_token
    retrieve_customer(user.stripe_token)
  else
    create_customer
  end
end


  def retrieve_customer(stripe_token)
    Stripe::Customer.retrieve(stripe_token)
  end

  def create_customer
    customer = Stripe::Customer.create(
      email: stripe_email,
      source: stripe_token
    )
    customer.update(stripe_token: customer.id)
    customer
end

  def create_charge(customer)
    Stripe::Charge.create(
      customer: customer.id,
      amount: order_amount,
      description: customer.email,
      currency: DEFAULT_CURRENCY
    )
  end
end
