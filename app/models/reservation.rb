class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :center
  belongs_to :location
end
