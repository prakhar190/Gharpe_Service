class AddColoumnToBookedServices < ActiveRecord::Migration[5.0]
  def change
    add_column :booked_services, :hours_booked, :integer
    add_column :services, :rate_per_hour, :integer
  end
end
