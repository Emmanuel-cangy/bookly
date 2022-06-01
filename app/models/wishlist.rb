class Wishlist < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookmarks, dependent: :delete_all
  has_many :books, through: :bookmarks
  validates :name, presence: true
end
