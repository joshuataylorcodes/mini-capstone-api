class MakeChangesToInventory < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :inventory, :integer, default: 1
  end
end
