class ProductsController < ApplicationController

  def show
  end

  def index
    @products = Product.all
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

end