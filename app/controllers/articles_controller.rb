class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @sports = Sport.all
    @states = State.all
    @articles = policy_scope(Article).where.not(latitude: nil, longitude: nil)
    @articles = @articles.where(sport: Sport.find_by_name((params[:sport]).capitalize)) if params[:sport].present?
    @articles = @articles.where(state: State.find_by_description((params[:state]))) if params[:state].present?
    @articles = @articles.where("#{:price} <= #{params[:price]}") if params[:price].present?

    @markers = @articles.map do |article|
      {
        lat: article.latitude,
        lng: article.longitude#,
        # infoWindow: { content: render_to_string(partial: "/articles/map_box", locals: { article: article }) }
      }
    end
  end

  def new
    @sports = Sport.all
    @states = State.all
    @article = Article.new
    authorize(@article)
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    @article.save!
    authorize(@article)
    redirect_to dashboard_listings_path(@article)
  end

  def dates_array(bookings)
    array = []
    bookings.each do |booking|
      array << {from: booking.start_date.strftime("%Y-%m-%d"), to: booking.end_date.strftime("%Y-%m-%d")}
    end
    return array
  end

  def show
    @booking = Booking.new
    @bookings = Booking.all.where(article: Article.find(params[:id]))
    if @bookings.empty? == false
      @previousbookings = dates_array(@bookings)
    else
      @previousbookings = []
    end
    @reviews = @article.reviews
    authorize(@article)
  end

  def edit
    @sports = Sport.all
    @states = State.all
    authorize(@article)
  end

  def update
    @article.update(article_params)
    redirect_to article_path(@article.id)
    authorize(@article)
  end

   def destroy
    @article.destroy
    redirect_to dashboard_listings_path
    authorize(@article)
  end

private

  def article_params
    params.require(:article).permit(:sport_id, :state_id, :name, :description, :start_date, :end_date, :address, :picture, :price)
  end

  def set_article
    @article = Article.find(params[:id])
  end


end
