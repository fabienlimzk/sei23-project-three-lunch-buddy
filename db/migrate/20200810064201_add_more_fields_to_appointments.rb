class AddMoreFieldsToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :start_time, :datetime
    add_column :appointments, :end_time, :datetime
    add_column :appointments, :title, :string
  end
end
