class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :code
      t.string :name
      t.decimal :price, precision: 8, scale: 2
      t.references :category, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
