class CreateBookedServices < ActiveRecord::Migration[5.0]
  def change
    create_table :booked_services do |t|
      t.date :preffered_date
      t.time :preffered_time
      t.string :postal_code
      t.integer :user_id
      t.integer :service_id

      t.timestamps
    end
  end
end
