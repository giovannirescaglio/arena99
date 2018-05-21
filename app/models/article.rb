class Article < ApplicationRecord
  belongs_to :sport
  belongs_to :state
  belongs_to :user
  has_many :reviews, through: :bookings
end
