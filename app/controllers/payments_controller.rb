class PaymentsController < ApplicationController
  def new
    @payment = Payment.new
  end

  def edit
  end

  def show
    @payment = Payment.find params[:id]
  end
end
