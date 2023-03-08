class DropUrl < ActiveRecord::Migration[7.0]
  def change
    drop_table :urls
  end
end
