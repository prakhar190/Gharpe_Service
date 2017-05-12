class ServicesController < ApplicationController

	def book_service
		BookedService.create(booked_service_params)
		flash[:success] = "Service Booked successfully"
		redirect_to root_path
	end

	private

		def booked_service_params
	  	params.require(:booked_service).permit(:service_id, :user_id, :preffered_date, :preffered_time, :postal_code)
	  end
end
