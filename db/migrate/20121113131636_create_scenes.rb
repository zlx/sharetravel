class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.string :name
      t.string :description
      t.integer :level
      t.integer :city_id

      t.timestamps
    end

    add_index :scenes, :level
    add_index :scenes, :city_id
  end
end
