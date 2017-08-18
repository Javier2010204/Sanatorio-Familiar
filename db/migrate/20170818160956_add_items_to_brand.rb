class AddItemsToBrand < ActiveRecord::Migration[5.1]
  def change
    add_column :brands, :address, :string
    add_column :brands, :phone, :string
    add_column :brands, :contact, :string
  end
end
