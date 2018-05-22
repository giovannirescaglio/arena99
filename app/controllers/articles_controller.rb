class ArticlesController < ApplicationController
  def index
    @articles = policy_scope(Article)
    @articles = @articles.where(sport_id: Sport.find_by_name((params[:sport])).id) if params[:sport].present?
  end

  def create
  end

  def new

  end

  def show
  end
end
