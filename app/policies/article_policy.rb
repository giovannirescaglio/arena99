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

  end

  def new?
    true
  end
end
