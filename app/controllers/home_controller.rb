class HomeController < ApplicationController
  def index
    if current_user
      cookies[:login] = {
        value: true,
        expires: 1.year.from_now
      }
    end
  	@service=Service.where('trending = ?',true)
  	@item_count = @service.count/8
    @selected_service = cookies[:service_id] ? cookies[:service_id] : 1
    @postal_code = cookies[:postal_code] ? cookies[:postal_code] : ''
    @preffered_date = cookies[:preffered_date] ? cookies[:preffered_date] : ''
    @preffered_time = cookies[:preffered_time] ? cookies[:preffered_time] : ''
    cookies.delete :service_id
    cookies.delete :postal_code
    cookies.delete :preffered_date
    cookies.delete :preffered_time
    @product_categories = ProductCategory.all
  end
end
