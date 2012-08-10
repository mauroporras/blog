class CreateVendedors < ActiveRecord::Migration
  def change
    create_table :vendedors do |t|
      t.string :codigo
      t.string :nombre

      t.timestamps
    end
  end
end
