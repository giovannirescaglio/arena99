class ArticlesController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  def index
    @articles = policy_scope(Article)
  end

  def create
  end

  def new

  end

  def show
  end
end
