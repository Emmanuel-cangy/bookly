class Book < ApplicationRecord
  belongs_to :user
  has_many :bookmarks
  has_many :wishlists, through: :bookmarks
  has_many :bookings
end
