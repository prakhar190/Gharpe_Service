class Service < ApplicationRecord
	mount_uploader :image, ServiceUploader	
  belongs_to :category

  # belongs_to :user
end
