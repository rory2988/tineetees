class User < ActiveRecord::Base
  has_and_belong_to_many :purchases
end