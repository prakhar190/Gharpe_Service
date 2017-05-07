class FixColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :services, :categories_id, :category_id
  	rename_column :products, :product_categories_id, :product_category_id
  end

end
