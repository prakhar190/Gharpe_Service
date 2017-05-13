ActiveAdmin.register BookedService do
	menu priority: 7
	actions :all, :except => [:destroy, :new]
	permit_params :list, :of, :attributes, :on, :model, :service_provider_id, :approved
	form do |f|
    f.input :service_provider_id, :label => 'Assign Service Provider', :as => :select, :collection => ServiceProvider.all.map{|u| ["#{u.name}", u.id]}
    f.actions
  end
end
