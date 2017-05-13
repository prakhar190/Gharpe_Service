class CreateServiceProviders < ActiveRecord::Migration[5.0]
  def change
    create_table :service_providers do |t|
    	t.string :code
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :postal_code
      t.text :description

      t.timestamps
    end
  end
end
