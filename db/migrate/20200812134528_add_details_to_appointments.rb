class AddDetailsToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :poster_has_reviewed, :boolean, :default => false
    add_column :appointments, :respondent_has_reviewed, :boolean, :default => false
  end
end
