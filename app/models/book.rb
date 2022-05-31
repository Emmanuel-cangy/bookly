class Book < ApplicationRecord
  belongs_to :user
  has_many :bookmarks, dependent: :destroy
  has_many :wishlists, through: :bookmarks
  has_many :bookings, dependent: :destroy

  validates :title, :description, :price_per_day, presence: true
end
