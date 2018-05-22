class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @article = Article.find(params[:article_id])
    @booking.article = @article
    @booking.user = current_user
    @booking.save
    authorize(@booking)
  end

private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :price)
  end

end


