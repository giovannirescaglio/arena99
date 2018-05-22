class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = policy_scope(Article)
  end

  def new
    @sports = Sport.all
    @states = State.all
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    @article.save!
  end


  def show
  end

private

  def article_params
    params.require(:article).permit(:sport_id, :state_id, :name, :description, :start_date, :end_date, :latitude, :longitude, :picture, :price)
  end

  def set_article
    @article = Article.find(params[:id])
  end


end
