class AddColoumnToServices < ActiveRecord::Migration[5.0]
  def change
    add_column :booked_services, :paid, :boolean, default: false
    add_column :booked_services, :amount, :integer
  end
end
