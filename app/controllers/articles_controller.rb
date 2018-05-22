class ArticlesController < ApplicationController
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
