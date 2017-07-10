class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def create
    Product.create(
      name: params[:name],
      price: params[:price],
      quantity: params[:quantity]
    )
    redirect_to '/products'
  end

end
