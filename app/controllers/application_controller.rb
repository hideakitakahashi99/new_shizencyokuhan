class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout :set_layout

class Forbidden < ActionController::ActionControllerError; end
class IpAddressRejected < ActionController::ActionControllerError; end



include ErrorHandlers if Rails.env.production?

  private
  def set_layout
  	if params[:controller].match(%r{\A(staff|admin|customer)/})
  		Regexp.last_match[1]
  	else
  		'application'
  	end
  end

  def current_cart
    Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end

 
end
