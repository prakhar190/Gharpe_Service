class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :code
      t.string :name
      t.boolean :active
      t.boolean :trending

      t.timestamps
    end
  end
end
