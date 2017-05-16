class HomeController < ApplicationController
  def index
  	@service=Service.where('trending = ?',true)
  end
end
