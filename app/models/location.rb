class Location < ApplicationRecord
  has_many :appt_locations
  has_many :appointments, through: :appt_locations


  def to_s
    name
  end
end
