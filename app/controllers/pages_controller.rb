class PagesController < ApplicationController
  
  include CurrentCart
  before_action :set_cart, only: [:index, :shop, :about]
  
  def index
    @products = Product.all
  end
  
  def shop
    query = params[:q].presence || "*" 
    #method provided by rails in ActiveSupport. Checks to see if query attribute is present, if not return default value of * which will show all Products
    @products = Product.search(query)
  end
  
  def about
  end
  
end
