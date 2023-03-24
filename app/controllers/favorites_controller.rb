class FavoritesController < ApplicationController
  def index
    @favorites = policy_scope(Favorite).all
  end

  def create
    pet = Pet.find_by(params[:pet_id])
    favorite = Favorite.create!(user: current_user)
    authorize favorite
    if favortite.save!
      redirect_to favorites_path
    else
      flash[:notice] = "Creating a favorite was not successful"
      redirect_to pet_path(pet)
    end
  end

end
