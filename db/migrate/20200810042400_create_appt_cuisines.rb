class CreateApptCuisines < ActiveRecord::Migration[6.0]
  def change
    create_table :appt_cuisines do |t|
      t.references :appointment, null: false, foreign_key: true
      t.references :cuisine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
