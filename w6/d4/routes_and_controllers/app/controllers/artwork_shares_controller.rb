class ArtworkSharesController < ApplicationController

  def index
    shares = ArtworkShare.all
    render json: shares
  end

  def show
    shares = ArtworkShare.find(params[:id])
    render json: shares
  end

  def create
    shares_params = params.require(:share).permit(:viewer_id, :artwork_id)
    shares = ArtworkShare.new(shares_params)
    if shares.save
      render json: shares
    else
      render json: shares.errors.full_messages, status: 422
    end
  end

  def destroy
    shares = ArtworkShare.find(params[:id])
    shares.destroy
    render json: shares
  end

  def favorite
    shares = ArtworkShare.find(params[:id])
    shares.update(favorite: true)
  end
  
end