class Zone < ApplicationRecord
  extend Mobility

  translates :name, type: :string


  has_many :countries
  has_many :regions
  has_many :centers
  has_many :locations
end
