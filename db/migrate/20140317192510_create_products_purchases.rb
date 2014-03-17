class CreateProductsPurchases < ActiveRecord::Migration
  def change
    create_table :products_purchases do |t|
      t.references :product
      t.references :purchase
    end
  end
end
