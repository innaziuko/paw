class SheltersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_shelter, only: %I[show destroy edit update]

  def index
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

  def show
    authorize @shelter
  end

  def new
    @shelter = Shelter.new
    authorize @shelter
  end

  def create
    @shelter = Shelter.new(shelter_params)
    @shelter.user = current_user
    authorize @shelter
    if @shelter.save
      redirect_to shelter_path(@shelter)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @shelter
  end

  def update
    authorize @shelter
    if @shelter.update(shelter_params)
      redirect_to shelter_path(@shelter)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @shelter
    @shelter.destroy
    redirect_to shelters_path, status: :see_other
  end

  private

  def set_shelter
    @shelter = Shelter.find(params[:id])
  end

  def shelter_params
    params.require(:shelter).permit(:name, :phone_number, :description, :address)
  end
end
