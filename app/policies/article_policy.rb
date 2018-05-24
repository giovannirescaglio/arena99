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

  def edit?
    record.user == user
  end

  def update?
    record.user == user
  end

   def destroy?
    record.user == user
  end
end
