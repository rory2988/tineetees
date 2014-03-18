class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find_by(id: params[:id])
    render json: @product
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

  def update
    @product = Product.find_by(id: params[:id])

    #update is 1 from build queue
    @product.on_hand = @product.on_hand + params[:update].to_i
    @product.on_order = @product.on_order - params[:update].to_i
    @product.save
    render json: @product
  end

  def product_params
    params.permit(:name, :description, :image, :price, :sold, :on_hand, :on_order)
  end

end