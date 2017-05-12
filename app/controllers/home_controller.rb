class HomeController < ApplicationController
  def index
  	@service=Service.all
  end
end
