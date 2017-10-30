class Product < ApplicationRecord

	before_destroy :ensure_not_product_item #to double check if its it is currently being added to any cart 

	searchkick
	mount_uploader :avatar, AvatarUploader
	validates :title, :description, presence: true 
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :title, uniqueness: true 

	has_many :product_items 

	def ensure_not_product_item
	  if product_items.empty?
		  return true
		else
		  errors.add(:base, 'You have Product Items')
		  return false
		end
	end
	
	def self.latest
		Product.order(:updated_at).last
	end

	
end
