class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :codigo
      t.string :nombre

      t.timestamps
    end
  end
end
