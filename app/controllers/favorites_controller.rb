class FavoritesController < ApplicationController
  skip_before_action :authenticate_user!
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
    authorize @favorite # Fix typo here
    if @favorite.save # Fix variable name here
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
