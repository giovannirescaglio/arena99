class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    new?
  end

  def show?
    true
  end

  def new?
    true
  end
end
