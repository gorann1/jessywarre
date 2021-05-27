class Zone < ApplicationRecord
  has_many :countries
  has_many :regions
end
