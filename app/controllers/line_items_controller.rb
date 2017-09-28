class LineItemsController < ApplicationController
  before_filter :authenticate_user!
  before_action :initialize_cart, only: [:create]

  def create
    initialize_cart
    # binding.pry
    item = Item.find(params[:id])

    @line_item = current_cart.add_item(item.id)

    if @line_item.save
      redirect_to cart_path(current_cart), alert: "Added Item to Cart!"
    else
      redirect_to store_path, alert: "Error Adding Item."
    end
  end

end
