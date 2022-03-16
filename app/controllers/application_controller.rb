# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit::Authorization

  def current_cart
    @current_cart ||= Cart.find_or_create_by(user: current_user)
  end

  delegate :cart_items, to: :current_cart

  def cart_total
    return 0 if cart_items.none?

    cart_items
      .joins(:product)
      .select('(cart_items.quantity * products.price) as total')
      .sum { |x| x[:total] }
  end

  helper_method :current_cart, :cart_items, :cart_total

  rescue_from Pundit::NotAuthorizedError do |exception|
    redirect_to root_url, alert: exception.message
  end
end
