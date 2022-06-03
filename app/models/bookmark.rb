class Bookmark < ApplicationRecord
  belongs_to :book
  belongs_to :wishlist

  validates :book_id, :wishlist_id, presence: true
  validates :book_id, uniqueness: { scope: :wishlist_id, message: "is already in list" }
end
