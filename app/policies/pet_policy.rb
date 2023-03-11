class PetPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
     Pet.all #scope.where(species: "cat").limit(10) + scope.where(species: "dog").limit(10)
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
    record.shelter.user == user
  end

  def destroy?
    record.shelter.user == user
  end
end
