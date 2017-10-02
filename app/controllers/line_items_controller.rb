class LineItemsController < ApplicationController
  #before_filter :authenticate_user!

  def create
    initialize_cart
    @line_item = current_cart.add_item(params[:item_id])
    if @line_item.save
      current_cart.save
      redirect_to cart_path(current_cart), alert: "Added Item to Cart!"
    else
      redirect_to store_path, alert: "Error Adding Item."
    end
  end

end
