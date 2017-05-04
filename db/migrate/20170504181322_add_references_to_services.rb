class AddReferencesToServices < ActiveRecord::Migration[5.0]
  def change
    add_reference :services, :categories, foreign_key: true
  end
end
