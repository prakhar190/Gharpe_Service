ActiveAdmin.register ServiceProvider do
	menu priority: 8
	# See permitted parameters documentation:
	# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
	#
	permit_params :list, :of, :attributes, :on, :model, :code, :name, :address, :city, :state, :postal_code, :description
	#
	# or
	#
	# permit_params do
	#   permitted = [:permitted, :attributes]
	#   permitted << :other if params[:action] == 'create' && current_user.admin?
	#   permitted
	# end

end
