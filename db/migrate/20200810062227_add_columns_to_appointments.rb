class AddColumnsToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :poster_id, :integer
    add_column :appointments, :respondent_id, :integer
  end
end
