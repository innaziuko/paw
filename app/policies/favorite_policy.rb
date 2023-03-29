class FavoritePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user_id: user.id)
    end
  end

  def index?
    true
  end

  def create?
    true
  end

  def new?
    true
  end

  def show?
    true
  end

  def new_favorite?
    true
  end
end
