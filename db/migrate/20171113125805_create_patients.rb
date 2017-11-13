class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :code
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.integer :age
      t.string :phone
      t.string :email
      t.string :dpi
      t.string :sex
      t.string :manager
      t.string :nit
      t.string :alergies
      t.text :annotations
      t.string :status

      t.timestamps
    end
  end
end
