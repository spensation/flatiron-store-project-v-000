class LineItemsController < ApplicationController
  #before_filter :authenticate_user!

  def create
    initialize_cart
    @line_item = LineItem.new
    binding.pry
    if @line_item.save
      redirect_to cart_path(current_cart), alert: "Added Item to Cart!"
    else
      redirect_to store_path, alert: "Error Adding Item."
    end
  end

# private
#   def line_item_params
#     params.require(:line_item).permit(:cart_id)
#   end
end
