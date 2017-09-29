class LineItemsController < ApplicationController
  #before_filter :authenticate_user!

  def create
    #raise params.inspect
    initialize_cart
    #binding.pry
    @line_item = current_cart.add_item(params[:item][:id])
    #binding.pry
    if @line_item.save
      redirect_to cart_path(current_cart), alert: "Added Item to Cart!"
    else
      redirect_to store_path, alert: "Error Adding Item."
    end
  end

end
