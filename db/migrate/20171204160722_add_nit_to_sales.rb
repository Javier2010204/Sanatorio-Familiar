class AddNitToSales < ActiveRecord::Migration[5.1]
  def change
    add_column :sales, :nit, :string
    add_column :sales, :client, :string
  end
end
