class SheltersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_shelter, only: %I[show destroy edit update dashboard]

  def index
    @shelters = policy_scope(Shelter).all
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

  def dashboard
    authorize @shelter
    @pets = Pet.where(shelter: @shelter)
    @pets.each do |pett|
      if Appointment.where(pet: pett).present?
        @appointments = Appointment.where(pet: pett)
      else
        @appointments = []
      end
    end
    if @appointments.empty?
      @reviews = []
    else
      @appointments.each do |appoint|
        if Review.where(appointment: appoint).present?
          @reviews = Review.where(appointment: appoint)
        else
          @reviews = []
        end
      end
    end
  end

  private

  def set_shelter
    @shelter = Shelter.find(params[:id])
  end

  def shelter_params
    params.require(:shelter).permit(:name, :phone_number, :description, :address)
  end
end
