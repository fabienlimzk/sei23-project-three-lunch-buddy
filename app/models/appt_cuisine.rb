class ApptCuisine < ApplicationRecord
  belongs_to :appointment
  belongs_to :cuisine
end
