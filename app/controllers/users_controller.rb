class UsersController < ApplicationController
def supplier
  @products_on_order = Product.where("on_order > :number", {number: 0})
  render :supplier
end

end