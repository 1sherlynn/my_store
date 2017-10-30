class PagesController < ApplicationController
  
  include CurrentCart
  before_action :set_cart, only: [:index, :about]
  
  def index
    @products = Product.all
  end

  def about
  end

  
end
