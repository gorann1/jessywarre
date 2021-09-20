class Type < ApplicationRecord
  extend Mobility

  translates :name, type: :string
  has_many :locations

end
