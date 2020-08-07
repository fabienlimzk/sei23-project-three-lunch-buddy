class CreateApptLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :appt_locations do |t|
      t.references :location, null: false, foreign_key: true
      t.references :appointment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
