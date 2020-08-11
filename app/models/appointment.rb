class Appointment < ApplicationRecord
 require 'action_view'
 require 'action_view/helpers'
 include ActionView::Helpers::DateHelper

  belongs_to :poster, :class_name => 'User'
  belongs_to :respondent, :class_name => 'User', optional: true

  enum status: [:available, :booked]

  has_many :appt_cuisines, dependent: :destroy
  has_many :cuisines, through: :appt_cuisines, dependent: :destroy

  has_many :appt_prices, dependent: :destroy
  has_many :prices, through: :appt_prices, dependent: :destroy

  has_many :appt_locations, dependent: :destroy
  has_many :locations, through: :appt_locations, dependent: :destroy

  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 8 }
  validates :location_ids, presence: true
  validates :price_ids, presence: true
  validates :cuisine_ids, presence: true
  validates :start_time, :end_time, :presence => true
  validate :min_event_duration

 def happening
  current_time = Time.now.strftime('%H:%M:%S')
  if ((self.end_time.today? || self.end_time.past?) && self.end_time.strftime('%H:%M:%S') < current_time) || (self.start_time.past? || (self.start_time.today? && self.start_time.strftime('%H:%M:%S') < current_time)) || (self.status == 'booked')
    "closed"
  else
    "open"
  end
 end

private
def min_event_duration
  return if end_time.blank? || start_time.blank?

  if end_time < start_time + 45.minutes
    errors.add(:appointment, "must end at least 45 mins after start time")
  end
end

end