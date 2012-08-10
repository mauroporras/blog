class CreateCompradors < ActiveRecord::Migration
  def change
    create_table :compradors do |t|
      t.string :codigo
      t.string :nombre

      t.timestamps
    end
  end
end
