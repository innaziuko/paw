class SheltersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_shelter, only: %I[show destroy edit update]

  def index
    @shelters = Shelter.all
  end

  def show
  end

  def new
    @shelter = Shelter.new
  end

  def create
    @shelter = Shelter.new(shelter_params)
    @shelter.user = current_user
    if @shelter.save
      redirect_to shelter_path(@shelter)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @shelter.update(shelter_params)
      redirect_to shelter_path(@shelter)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
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
