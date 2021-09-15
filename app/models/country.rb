class Country < ApplicationRecord

  extend Mobility

  translates :name, type: :string


  belongs_to :zone
  has_many :regions
  has_many :centers
  has_many :locations

end
