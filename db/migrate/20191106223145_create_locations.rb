class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.integer :longtitude
      t.integer :latitude

      t.timestamps
    end
  end
end
