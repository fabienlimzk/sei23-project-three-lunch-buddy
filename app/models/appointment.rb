class Appointment < ApplicationRecord
  belongs_to :poster, :class_name => 'User'
  belongs_to :respondent, :class_name => 'User', optional: true

  enum status: [:available, :booked]

  has_many :appt_cuisines, dependent: :destroy
  has_many :cuisines, through: :appt_cuisines, dependent: :destroy

  has_many :appt_prices, dependent: :destroy
  has_many :prices, through: :appt_prices, dependent: :destroy

  has_many :appt_locations, dependent: :destroy
  has_many :locations, through: :appt_locations, dependent: :destroy

  validates :content, presence: true, length: { minimum: 8}
  validates :location_ids, presence: true
  validates :price_ids, presence: true
  validates :cuisine_ids, presence: true

end
