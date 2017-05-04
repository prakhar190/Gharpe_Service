class User < ApplicationRecord
  has_many :feedbacks
  has_many :services, through: :booked_services
end
