class ServicesController < ApplicationController
	skip_before_filter :verify_authenticity_token, :only => :book_service

	def book_service
		if current_user
			BookedService.create(booked_service_params)
			flash[:success] = "Service Booked successfully"
			redirect_to root_path
		else
			session[:booked_service] = params[:booked_service]
		end
	end

	private

		def booked_service_params
	  	params.require(:booked_service).permit(:service_id, :user_id, :preffered_date, :preffered_time, :postal_code)
	  end
end
