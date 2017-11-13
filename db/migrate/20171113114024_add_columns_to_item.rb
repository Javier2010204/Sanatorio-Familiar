class AddColumnsToItem < ActiveRecord::Migration[5.1]
	def change
		add_column :items, :cost_price, :decimal, precision: 8, scale: 2
		add_column :items, :unit_price, :decimal, precision: 8, scale: 2
		add_column :items, :due_date, :date
	end
end
