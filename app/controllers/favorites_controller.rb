class FavoritesController < ApplicationController
  def index
    @favorites = policy_scope(Favorite).all
  end

  def show
    @pet = Pet.find(params[:id])
    @favorite = @pet.favorites.new
    authorize @favorite
  end

  def create
    @pet = Pet.find(params[:pet_id])
    @favorite = Favorite.new(user: current_user, pet: @pet)
    authorize favorite
    if favorite.save
      redirect_to favorites_path
    else
      flash[:notice] = "Creating a favorite was not successful"
      redirect_to pet_path(@pet)
    end
  end

  def new_favorite
    @pet = Pet.find(params[:pet_id])
    @favorite = @pet.favorites.new
    authorize @favorite
  end

end
