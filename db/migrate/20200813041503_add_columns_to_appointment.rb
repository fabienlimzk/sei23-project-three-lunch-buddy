class AddColumnsToAppointment < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :address, :string
    add_column :appointments, :latitude, :float
    add_column :appointments, :longitude, :float
  end
end
