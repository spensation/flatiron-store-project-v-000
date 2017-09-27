class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.integer :inventory, default: 1
      t.float :price
      t.integer :category_id
    end
  end
end
