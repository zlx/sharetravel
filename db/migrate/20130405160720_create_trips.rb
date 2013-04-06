class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :title
      t.string :summary
      t.text :content
      t.integer :author_id

      t.timestamps
    end
  end
end
