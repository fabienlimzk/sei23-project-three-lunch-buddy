class Location < ApplicationRecord
  has_many :appt_locations, dependent: :destroy
  has_many :appointments, through: :appt_locations, dependent: :destroy

  validates :name, presence: true, length: { minimum: 3 }
  validates_uniqueness_of :name, :message => '%{value} already exists'

  def to_s
    name
  end
end
