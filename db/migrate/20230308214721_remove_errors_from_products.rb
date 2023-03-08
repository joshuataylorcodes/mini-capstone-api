class RemoveErrorsFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :url
  end
end
