class PetsController < ApplicationController

  def index
    @pets = Pet.where(species: "cat").limit(5) + Pet.where(species: "dog").limit(5)
  end
end
