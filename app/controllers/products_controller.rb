class ProductsController < ApplicationController


  def show
    response = Product.find_by(id: params[:id])
    render json: response
  end

  def update
    
    @product = Product.find_by(id: params[:id])

    #update is 1 from build queue
    @product.on_hand = @product.on_hand + params[:update].to_i
    @product.on_order = @product.on_order - params[:update].to_i
    @product.save
    render json: @product
  end

end