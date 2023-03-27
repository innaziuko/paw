class PetsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_pet, only: %I[show destroy edit update]
  before_action :set_shelter, only: %I[new create]

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
    @shelters = policy_scope(Shelter).all
    @markers = @shelters.geocoded.map do |shelter|
      {
        lat: shelter.latitude,
        lng: shelter.longitude,
        info: render_to_string(partial: "pages/popup", locals: { shelter: shelter }),
        marker_html: render_to_string(partial: "pages/marker")
      }
    end
  end

  def new
    @pet = Pet.new
    authorize @pet
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.shelter = @shelter
    authorize @pet
    if @pet.save
      redirect_to shelter_dashboard_path(@shelter), notice: 'Pet was successfully created.'
    else
      flash[:alert] = 'Unable to create pet.Be sure to fill in all fields.'
      redirect_to shelter_dashboard_path(@shelter), status: :unprocessable_entity
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
    params.require(:pet).permit(:name, :age, :description, :photo, :species, :breed, :gender, :status)
  end

  def set_shelter
    @shelter = Shelter.find(params[:shelter_id])
  end
end
