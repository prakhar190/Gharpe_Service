ActiveAdmin.register Product do
	menu priority: 6
	# See permitted parameters documentation:
	# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
	#
	permit_params :list, :of, :attributes, :on, :model, :code , :name, :quantity, :price, :star_ratings ,:product_category_id, :image
	#
	# or
	#
	# permit_params do
	#   permitted = [:permitted, :attributes]
	#   permitted << :other if params[:action] == 'create' && current_user.admin?
	#   permitted
	# end

end
