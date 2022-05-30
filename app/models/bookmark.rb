class Bookmark < ApplicationRecord
  belongs_to :book
  belongs_to :wishlist
end
