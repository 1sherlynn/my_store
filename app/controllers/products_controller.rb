class ProductsController < ApplicationController
  
  include CurrentCart
  before_action :set_cart, only: [:index ]
  
  def index
    query = params[:q].presence || "*" 
    #method provided by rails in ActiveSupport. Checks to see if query attribute is present, if not return default value of * which will show all Products
    @products = Product.search(query, suggest: true)
  end

  def autocomplete
    render json: Product.search(params[:term], fields: [{title: :text_start}], limit: 10).map(&:title)
  end

  
end
