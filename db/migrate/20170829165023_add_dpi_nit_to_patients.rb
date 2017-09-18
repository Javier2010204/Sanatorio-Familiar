class AddDpiNitToPatients < ActiveRecord::Migration[5.1]
  def change
    add_column :patients, :dpi, :string
    add_column :patients, :nit, :string
  end
end
