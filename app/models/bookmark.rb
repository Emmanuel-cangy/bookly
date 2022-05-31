class Bookmark < ApplicationRecord
  belongs_to :book
  belongs_to :wishlist

  validates :book_id, :wishlist_id, presence: true
end
