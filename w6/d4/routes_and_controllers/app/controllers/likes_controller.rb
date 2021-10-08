class LikesController < ApplicationController

  #likes?type=artwork
  def index
    type = params[:type]
    if type == "artwork"
      like = Like.where(likeable_type: "Artwork")
    elsif type == "comment"
      like = Like.where(likeable_type: "Comment")
    else
      like = Like.all
    end
    render json: like
  end

  def show
    like = Like.find(params[:id])
    render json: like
  end

  def destroy
    like = Like.find(params[:id])
    like.destroy
    render json: like
  end

  def create
    like = Like.new(params.require(:like).permit(:likeable_type, :likeable_id, :user_id))
    if like.save
      render json: like
    else
      render json: like.errors.full_messages, status: 422
    end
  end

end
