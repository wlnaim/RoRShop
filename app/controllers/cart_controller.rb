class CartController < ApplicationController
  
  before_action :authenticate_user!
  
  def add
    id = params[:id] 
    cart[id] ? cart[id] = cart[id] + 1 : cart[id] = 1 
    flash[:notice] = "Added to cart"
    redirect_to :back
  end
  
  def clearCart
    session[:cart] = nil
    redirect_to action: :index
  end
  
  def index
    @cart = cart
  end
 
end
