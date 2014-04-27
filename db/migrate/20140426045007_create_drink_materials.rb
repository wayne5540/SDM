class CreateDrinkMaterials < ActiveRecord::Migration
  def change
    create_table :drink_materials do |t|
      t.integer :drink_id
      t.integer :material_id

      t.timestamps
    end
  end
end
