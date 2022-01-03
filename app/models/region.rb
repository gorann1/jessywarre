class Region < ApplicationRecord
  extend Mobility

  translates :name, type: :string


  belongs_to :zone
  belongs_to :country, :touch => true
  has_many :centers
  has_many :locations
end
