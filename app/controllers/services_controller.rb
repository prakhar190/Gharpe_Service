class ServicesController < ApplicationController
	skip_before_action :verify_authenticity_token

	def book_service
		if current_user
			BookedService.create(booked_service_params)
			flash[:success] = "Service Booked successfully"
			redirect_to root_path
		else
			cookies[:service_id] = params[:booked_service][:service_id]
			cookies[:postal_code] = params[:booked_service][:postal_code]
			cookies[:preffered_date] = params[:booked_service][:preffered_date]
			cookies[:preffered_time] = params[:booked_service][:preffered_time]
		end
	end

	def get_rate_per_hour
		service=Service.find_by_id(params[:id])
		render :json => {rate: service.rate_per_hour}
	end

	private

		def booked_service_params
	  	params.require(:booked_service).permit(:service_id, :user_id, :preffered_date, :preffered_time, :postal_code, :hours_booked)
	  end
end
