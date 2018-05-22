class Booking < ApplicationRecord
  belongs_to :article
  belongs_to :user
  has_many :review
end
