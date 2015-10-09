class Api::ProductsController < ApplicationController



  def index
    # actuall search

    @products = Product.all.where("quantity > 0")
    if params[:search_text].present?
      @products = @products.search_errthing(params[:search_text])
    end
    render json: {products: @products}
  end
end
