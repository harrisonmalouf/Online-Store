class PaymentsController < ApplicationController
  def index
  end

  def create
     # Amount in cents
     @amount = 2500

     user = Stripe::User.create(
       :email => 'user@ga.com',
       :card => params[:stripeToken]
     )

     payment = Stripe::Payment.create(
       # :first_name => user.id,
       # :description => '',

     )
  end
  def new
    @payment = Payment.new
  end

  def edit
  end

  def show
    @payment = Payment.find params[:id]
  end
end
