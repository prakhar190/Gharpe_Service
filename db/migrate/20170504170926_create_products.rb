class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :code
      t.string :name
      t.integer :quantity
      t.integer :price
      t.integer :star_ratings
      t.timestamps
    end
  end
end
