ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span ("Welcome to Gharpe Services Admin panel.")
        small ("This is default admin dashboard.")
      end
    end

    columns do
       column do
          panel "Total Users" do
           div class: 'stats count' do
             User.count
           end
         end
          panel "Total Products" do
            div class: 'products count' do
              Product.count
            end
          end
          panel "Total Services" do
            div class: 'service count' do
              Service.count
            end
          end
       end
   end

      
     
  end # content
end
