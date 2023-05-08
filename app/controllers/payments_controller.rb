class PaymentsController < ApplicationController
  before_action :set_cart, only: %i[checkout success]

  def checkout
    if @cart.line_items.empty?
      redirect_to carts_path
    else
      @session = Stripe::Checkout::Session.create(StripeCheckout.make_stripe_checkout_params(cart: @cart))
  end

  def success
    @cart.line_items.delete_all
    redirect_to root_path
  end
end
