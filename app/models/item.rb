class Item < ActiveRecord::Base
  # t.string  "title"
  # t.integer "inventory",   default: 1
  # t.float   "price"
  # t.integer "category_id"

  belongs_to :category
  has_many :line_items
  

  def self.available_items
    select { |i| i.inventory > 0 }
  end
end
