class AddReferencesToProducts < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :product_categories, foreign_key: true
  end
end
