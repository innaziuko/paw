class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @shelters = Shelter.where(user: current_user)
  end

  private

  def user_params
    params.require(:user).permit(:photo)
  end
end
