class LineItemsController < ApplicationController
  #before_filter :authenticate_user!

  def create
    initialize_cart
    @line_item = LineItem.new(item_id: params[:item_id])
    #raise params.inspect
    if @line_item.save
      redirect_to cart_path(current_cart), alert: "Added Item to Cart!"
    else
      redirect_to store_path, alert: "Error Adding Item."
    end
  end

# private
#   def line_item_params
#     #raise params.inspect
#     params.require(:line_item).permit(:item_id)
#   end
end
