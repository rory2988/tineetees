class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.text :image
      t.decimal :price
      t.integer :sold
      t.integer :on_hand
      t.integer :on_order
    end
  end
end
