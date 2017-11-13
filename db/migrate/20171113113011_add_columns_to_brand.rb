class AddColumnsToBrand < ActiveRecord::Migration[5.1]
	def change
		add_column :brands, :contact, :string
		add_column :brands, :phone, :string
		add_column :brands, :email, :string
		add_column :brands, :address, :string
	end
end
