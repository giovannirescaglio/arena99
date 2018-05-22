class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @sports = Sport.all
    @states = State.all
    @articles = policy_scope(Article)
    @articles = @articles.where(sport: Sport.find_by_name((params[:sport]).capitalize)) if params[:sport].present?
    @articles = @articles.where(state: State.find_by_description((params[:state]))) if params[:state].present?
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
  end


  def show
    authorize(@article)
    @booking = Booking.new
  end

private

  def article_params
    params.require(:article).permit(:sport_id, :state_id, :name, :description, :start_date, :end_date, :latitude, :longitude, :picture, :price)
  end

  def set_article
    @article = Article.find(params[:id])
  end


end
