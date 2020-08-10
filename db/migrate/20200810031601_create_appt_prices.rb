class CreateApptPrices < ActiveRecord::Migration[6.0]
  def change
    create_table :appt_prices do |t|
      t.references :appointment, null: false, foreign_key: true
      t.references :price, null: false, foreign_key: true

      t.timestamps
    end
  end
end
