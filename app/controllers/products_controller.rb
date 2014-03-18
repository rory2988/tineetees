class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find_by(id: params[:id])
  end

  def create
    Product.create(
        name: params[:name],
        description: params[:description],
        price: params[:price],
        image: params[:image],
        sold: 0,
        on_hand: params[:on_hand],
        on_order: params[:on_order]
      )
  end

def product_params
  params.permit(:name, :description, :image, :price, :sold, :on_hand, :on_order)
end
