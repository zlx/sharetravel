class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :description
      t.integer :province_id
      t.integer :country_id

      t.timestamps
    end

    add_index :cities, :province_id
    add_index :cities, :country_id
  end
end
