class ProductItem < ApplicationRecord
  belongs_to :product, required: false
  belongs_to :cart, required: false
  belongs_to :order, required: false
  
  def total_price
		product.price * quantity
	end
	
end
