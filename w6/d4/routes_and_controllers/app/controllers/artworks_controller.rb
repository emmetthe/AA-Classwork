class ArtworksController < ApplicationController

  def index
    user_id = params[:user_id]
    user = User.find(user_id)
    artworks = user.artworks
    render json: artworks
  end
  
end