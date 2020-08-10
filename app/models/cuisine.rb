class Cuisine < ApplicationRecord
  has_many :appt_cuisines, dependent: :destroy
  has_many :appointments, through: :appt_cuisines, dependent: :destroy


  def to_s
    name
  end
end
