class ApptLocation < ApplicationRecord
  belongs_to :location
  belongs_to :appointment
end
