class ArticlePolicy < ApplicationPolicy
  class Scope < Scope

    def create?
      new?
    end

    def show?

    end

    def new?
      true
    end

    def resolve
      scope.all
    end
  end
end
