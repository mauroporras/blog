class CreateMyModels < ActiveRecord::Migration
  def change
    create_table :my_models do |t|
      t.string :myAttr1
      t.text :myAttr2

      t.timestamps
    end
  end
end
