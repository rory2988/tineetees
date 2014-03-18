class User < ActiveRecord::Base
  has_many :purchases
  has_many :products, through: :products_purchases
  validates :email, presence: :true, uniqueness: :true 
  has_secure_password
  validates :password_digest, presence: :true
end

