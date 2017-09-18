class AddSaleIdToSaleDetails < ActiveRecord::Migration[5.1]
  def change
    add_reference :sale_details, :sale, foreign_key: true
  end
end
