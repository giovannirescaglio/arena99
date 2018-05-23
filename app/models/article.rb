class Article < ApplicationRecord
  belongs_to :sport
  belongs_to :state
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
