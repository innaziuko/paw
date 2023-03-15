class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @shelters = policy_scope(Shelter).all
    @markers = @shelters.geocoded.map do |shelter|
      {
        lat: shelter.latitude,
        lng: shelter.longitude,
        info: render_to_string(partial: "popup", locals: { shelter: shelter })
      }
    end
    @pet_types = Pet.all.pluck(:species).uniq
  end

  def profile
    @shelters = Shelter.where(user: current_user)
    @pets = Pet.where(user: current_user)
    @appointments = Appointment.where(user: current_user)
  end

  private

  def user_params
    params.require(:user).permit(:photo)
  end
end
