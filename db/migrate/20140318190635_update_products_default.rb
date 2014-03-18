class UpdateProductsDefault < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.change_column_default :on_hand, :integer, 0
      t.change_column_default :on_order, :integer, 0
      t.change_column_default :sold, :integer, 0
    end
  end
end
