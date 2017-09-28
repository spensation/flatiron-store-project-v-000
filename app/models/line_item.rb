class LineItem < ActiveRecord::Base
  # t.integer "quantity", default: 1
  # t.integer "item_id"
  # t.integer "cart_id"

  belongs_to :cart
  belongs_to :item

end
