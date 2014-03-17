class User < ActiveRecord::Base
  has_many: :purchases
  has_many: :products, through: :products_purchases
  validates :email, presence: :true, uniqueness: :true 
end