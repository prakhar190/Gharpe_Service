class HomeController < ApplicationController
  def index
  	@service=Service.where('trending = ?',true)
  	@item_count = @service.count/8
  end
end
