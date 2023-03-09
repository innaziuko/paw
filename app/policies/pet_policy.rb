class PetPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(species: "cat").limit(5) + scope.where(species: "dog").limit(5)
    end
  end

  def show?
    return true
  end

  def new?
    return create?
  end

  def create?
    return true
  end

  def edit?
    return update?
  end

  def update?
    record.shelter == user
  end

  def destroy?
    record.shelter == user
  end
end
