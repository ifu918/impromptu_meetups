class CreateCheckIns < ActiveRecord::Migration[5.1]
  def change
    create_table :check_ins do |t|
      t.integer :user
      t.time :checkin_time
      t.string :description
      t.integer :location

      t.timestamps
    end
  end
end
