class Location < ApplicationRecord
  include ActionView::Helpers::TextHelper
  extend Mobility

  translates :desc, type: :text
  translates :currents, type: :string
  translates :visibility, type: :string

  belongs_to :zone
  belongs_to :country
  belongs_to :region
  belongs_to :category
  belongs_to :type
  has_many :assignments
  has_many :centers, :through => :assignments
  has_one_attached :main_image
  has_many_attached :images

  has_rich_text :body
  has_many :reservations

end
