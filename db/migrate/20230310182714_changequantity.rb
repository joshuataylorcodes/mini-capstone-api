class Changequantity < ActiveRecord::Migration[7.0]
  def change
    rename_column :orders, :Quantity, :quantity
  end
end
