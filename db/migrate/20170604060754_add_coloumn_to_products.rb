class AddColoumnToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :discount, :integer, default: 0
  end
end
