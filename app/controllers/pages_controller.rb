class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @pets = Pet.all
    @random_pets = @pets.shuffle.take(8)
    @shelters = policy_scope(Shelter).all
    @markers = @shelters.geocoded.map do |shelter|
      {
        lat: shelter.latitude,
        lng: shelter.longitude,
        info: render_to_string(partial: "popup", locals: { shelter: shelter }),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def profile
    @shelters = Shelter.where(user: current_user)
    @pets = Pet.where(user: current_user)
    @appointments = Appointment.where(user: current_user)
    @favorites = Favorite.where(user: current_user)
  end

  private

  def user_params
    params.require(:user).permit(:photo)
  end
end
