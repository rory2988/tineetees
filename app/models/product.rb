class Product < ActiveRecord::Base
  has_and_belongs_to_many :purchases

  #TO DO::SET DEFAULTS IN MIGRATION
  before_save :set_default_sold
  before_save :set_default_on_hand
  before_save :set_default_on_order

  def set_default_sold
    self.sold ||= 0
  end

  def set_default_on_hand
    self.on_hand ||= 0
  end

  def set_default_on_order
    self.on_order ||= 0
  end
end