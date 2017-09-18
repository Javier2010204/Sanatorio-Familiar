class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
      t.integer :number
      t.date :date
      t.decimal :price, precision: 8, scale: 2
      t.integer :quantity
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
