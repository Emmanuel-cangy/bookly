class Booking < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates :rent_date, :return_date, presence: true
end
