class CreateSaleDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :sale_details do |t|
      t.string :name_item
      t.integer :qty
      t.decimal :subtotal, precision: 8, scale: 2

      t.timestamps
    end
  end
end
