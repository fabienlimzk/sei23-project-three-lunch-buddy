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

  validates :content, presence: true, length: { minimum: 8 }
  validates :location_ids, presence: true
  validates :price_ids, presence: true
  validates :cuisine_ids, presence: true
  validate :min_event_duration

  private
  def min_event_duration
    return if end_time.blank? || start_time.blank?

    if end_time < start_time + 45.minutes
      errors.add(:appointment, "must end at least 45 mins after start time")
    end
  end
end