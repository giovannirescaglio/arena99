class DashboardController < ApplicationController
  skip_after_action :verify_authorized, only: :listings

  def listings
    @articles = current_user.articles
    @bookings = current_user.bookings
  end

  def rentals
  end
end





