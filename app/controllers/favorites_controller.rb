class FavoritesController < ApplicationController
  def index
    @favorites = policy_scope(Favorite).all
  end

end
