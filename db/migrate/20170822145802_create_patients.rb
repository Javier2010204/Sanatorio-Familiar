class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :code
      t.string :name
      t.string :last_name
      t.date :birthdate
      t.string :phone
      t.text :allergies
      t.string :manager

      t.timestamps
    end
  end
end
