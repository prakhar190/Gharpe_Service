class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource_or_scope)
	  if session[:booked_service]
	  	booked_service_params = session[:booked_service]
	  	session.delete(:booked_service)
	  	booked_service_params[:user_id] = current_user.id
	  	BookedService.create(booked_service_params)
	  	flash[:success] = "Service Booked successfully"
	  end
	  root_path
	end
end

