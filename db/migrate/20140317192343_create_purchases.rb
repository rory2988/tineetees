class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :personalization
      t.string :status
      t.references :user
    end
  end
end
