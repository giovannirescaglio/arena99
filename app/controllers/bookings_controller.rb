class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @article = Article.find(params[:article_id])
    @booking.article = @article
    @booking.user = current_user
    @booking.price = ((@booking.end_date - @booking.start_date) + 1) * @article.price
    @booking.save
    authorize(@booking)
    redirect_to dashboard_listings_path(anchor:'#profile')
  end

private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end


