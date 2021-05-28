class Country < ApplicationRecord
  belongs_to :zone
  has_many :regions
  has_many :centers
  has_many :locations

end
