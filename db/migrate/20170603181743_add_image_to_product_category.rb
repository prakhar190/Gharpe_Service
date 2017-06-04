class AddImageToProductCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :product_categories, :image, :string
  end
end
