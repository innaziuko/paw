class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_pet, only: %I[show destroy edit update]

  def index
    @pets = policy_scope(Pet)
    if params[:species].present?
      @pets = @pets.where(species: params[:species])
    end
    if params[:gender].present?
      @pets = @pets.where(gender: params[:gender])
    end
    if params[:age_from].present? && params[:age_to].present?
      @pets = @pets.where(age: params[:age_from]..params[:age_to])
    end
    if params[:location].present?
      # location accept country name for now
      @pets = @pets.select do |pet|
        Geocoder.search([pet.shelter.latitude, pet.shelter.longitude]).first.country == params[:location]
      end
    end
  end


  def show
    authorize @pet
  end

  def new
    @pet = Pet.new
    authorize @pet
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    authorize @pet
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @pet
  end

  def update
    authorize @pet
    if @pet.update(pet_params)
      redirect_to pet_path(@pet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @pet
    @pet.destroy
    redirect_to pets_path, status: :see_other
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pet_params
    params.require(:pet).permit(:name, :phone_number, :description, :address, :photo)
  end
end
