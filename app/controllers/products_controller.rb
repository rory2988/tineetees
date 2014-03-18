class ProductsController < ApplicationController

  def index
  end


  def show
    @product = Product.find_by(id: params[:id])
  end

end

def product_params
  params.permit(:name, :description, :image, :price, :sold, :on_hand, :on_order)
end
