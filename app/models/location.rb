class Location < ApplicationRecord
  has_many :appt_locations, dependent: :destroy
  has_many :appointments, through: :appt_locations, dependent: :destroy


  def to_s
    name
  end
end
