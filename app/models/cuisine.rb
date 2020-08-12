class Cuisine < ApplicationRecord
  has_many :appt_cuisines, dependent: :destroy
  has_many :appointments, through: :appt_cuisines, dependent: :destroy

  validates :name, presence: true, length: { minimum: 3 }
  validates_uniqueness_of :name, :case_sensitive => false, :message => '%{value} already exists'

  def to_s
    name
  end
end
