class AddColoumnsToBookedServices < ActiveRecord::Migration[5.0]
  def change
    add_column :booked_services, :service_provider_id, :integer
    add_column :booked_services, :approved, :boolean, default: false
  end
end
