class Book < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookmarks, dependent: :destroy
  has_many :wishlists, through: :bookmarks
  has_many :bookings, dependent: :destroy
  validates :title, :description, :price_per_day, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
