class BandsController < ApplicationController

  def index
    @bands = Band.all
    render :index
  end

  def create
    band = Band.new(band_params)
    
  end

  def band_params
    params.require(:band).permit(:name)
  end

end
