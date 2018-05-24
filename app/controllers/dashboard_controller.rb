class DashboardController < ApplicationController
  skip_after_action :verify_authorized, only: [:listings, :rentals]

  def listings
    @articles = current_user.articles
    @bookings = current_user.bookings
  end
end





