class Cart < ActiveRecord::Base

  belongs_to :user
  has_many :line_items
  has_many :items, through: :line_items


  def total
    items.map(&:price).sum
  end

  def add_item(item_id)
    line_item = line_items.find_by(item_id: item_id)
    if items.include?(line_item.try(:item))
      line_item.update(quantity: (line_item.quantity + 1))
      line_item
    else
      line_items.new(item_id: item_id)
    end
  end
end
