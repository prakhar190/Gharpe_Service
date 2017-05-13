class BookedService < ApplicationRecord
  belongs_to :user
  belongs_to :service
  belongs_to :service_provider
  after_save :approve_service

  def approve_service
  	if self.service_provider_id.present? && !self.approved
  		self.update_attributes(approved: true)
  	end
  end
end
