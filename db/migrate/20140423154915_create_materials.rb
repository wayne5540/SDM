class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :name
      t.integer :mtype_id
      t.integer :drink_count, :default => 0
      t.boolean :available, :default => true

      t.timestamps
    end
  end
end
