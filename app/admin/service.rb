ActiveAdmin.register Service do
	menu priority: 5
	# See permitted parameters documentation:
	# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
	#
	permit_params :list, :of, :attributes, :on, :model, :name , :code, :active, :trending, :category_id, :image
	# index do
	#   column :categories_id, :sortable => false
	# end
	#
	# or
	#
	# permit_params do
	#   permitted = [:permitted, :attributes]
	#   permitted << :other if params[:action] == 'create' && current_user.admin?
	#   permitted
	# end
	# form do |f|
 #  	 f.input :avatar, as: :file
	# end


end
