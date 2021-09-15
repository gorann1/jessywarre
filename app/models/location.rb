class Location < ApplicationRecord
  include ActionView::Helpers::TextHelper
  extend Mobility

  translates :desc, type: :text

  belongs_to :zone
  belongs_to :country
  belongs_to :region
  belongs_to :category
  belongs_to :type
  has_many :assignments
  has_many :centers, :through => :assignments
  has_one_attached :main_image
  has_rich_text :body
  has_many :reservations

end
