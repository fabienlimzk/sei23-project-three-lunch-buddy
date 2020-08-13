class AddColumnsToAppointment < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :address, :string, null: true
    add_column :appointments, :latitude, :float, null: true
    add_column :appointments, :longitude, :float, null: true
  end
end
