class Location < ApplicationRecord
  include ActionView::Helpers::TextHelper

  belongs_to :zone
  belongs_to :country
  belongs_to :region
  belongs_to :category
  belongs_to :type
  has_many :assignments
  has_many :centers, :through => :assignments
  has_one_attached :main_image

end
