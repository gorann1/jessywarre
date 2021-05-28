class Location < ApplicationRecord
  belongs_to :zone
  belongs_to :country
  belongs_to :region
  belongs_to :category
  belongs_to :type
end
