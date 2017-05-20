class ChargesController < ApplicationController
  def new
  end

  def create
    # Amount in cents
    @amount =  params[:stripeAmount].to_i*100

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'inr'
    )
    BookedService.create(booked_service_params)
    flash[:success] = "Service Booked successfully"
    redirect_to :back

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  private

		def booked_service_params
	  	params.require(:service_booked).permit(:service_id, :user_id, :preffered_date, :preffered_time, :postal_code, :hours_booked)
	  end

end
