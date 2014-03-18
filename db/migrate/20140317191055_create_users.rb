class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :type
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.boolean :contact
      t.string :phone_number
      t.string :billing_address
      t.string :shipping_address
    end
  end
end
