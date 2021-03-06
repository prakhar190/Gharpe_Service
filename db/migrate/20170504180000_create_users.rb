class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :mobile
      t.text :address
      t.string :city
      t.string :state
      t.string :country
      t.string :postal_code
      t.string :passport_number

      t.timestamps
    end
  end
end
