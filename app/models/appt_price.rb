class ApptPrice < ApplicationRecord
  belongs_to :appointment
  belongs_to :price
end
