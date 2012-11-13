class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string :name
      t.string :description
      t.integer :country_id

      t.timestamps
    end

    add_index :provinces, :country_id
  end
end
