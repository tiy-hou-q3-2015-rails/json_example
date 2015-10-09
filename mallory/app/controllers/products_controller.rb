class ProductsController < ApplicationController
  def index
    @products = Product.all.where("quantity > 0")
  end

  def show
    @product = Product.find params[:id]
  end
end
