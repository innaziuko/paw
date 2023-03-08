class SheltersController < ApplicationController
  before_action :set_shelter, only: %i[ show edit update destroy ]

  def index
    @shelters = Shelter.all
  end

  def show
  end

  def new
    @shelter = Shelter.new
  end

  def edit
  end

  def create
    @shelter = Shelter.new(shelter_params)

    respond_to do |format|
      if @shelter.save
        format.html { redirect_to shelter_url(@shelter), notice: "shelter was successfully created." }
        format.json { render :show, status: :created, location: @shelter }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shelter.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @shelter.update(shelter_params)
        format.html { redirect_to shelter_url(@shelter), notice: "Shelter was successfully updated." }
        format.json { render :show, status: :ok, location: @shelter }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shelter.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @shelter.destroy

    respond_to do |format|
      format.html { redirect_to shelters_url, notice: "Shelter was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  def set_shelter
    @shelter = shelter.find(params[:id])
  end

  def shelter_params
    params.require(:shelter).permit(:name, :address, :phone_number, :description)
  end
end
