class Product < ApplicationRecord
  belongs_to :user
  has_many :transactions
  has_one_attached :image_url

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
