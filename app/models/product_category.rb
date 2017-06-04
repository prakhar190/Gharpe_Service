class ProductCategory < ApplicationRecord
  mount_uploader :image, ProductCategoryUploader
  has_many :products
end
