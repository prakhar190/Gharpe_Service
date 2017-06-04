class Product < ApplicationRecord
	mount_uploader :image, ProductUploader
  belongs_to :product_category

	def get_discounted_price
		self.price - (self.discount/100.to_f * self.price)
	end
end
