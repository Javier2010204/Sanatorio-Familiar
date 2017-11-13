class ChageStronkForStockInItems < ActiveRecord::Migration[5.1]
  def change
  	remove_column :items, :strock, :integer
  	add_column :items, :stock, :integer
  end
end
