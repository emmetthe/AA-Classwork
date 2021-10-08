class CommentsController < ApplicationController

  def create
    comment = Comment.new(comment_params)
    if comment.save
      render json: comment
    else
      render json: comment.errors.full_messages, status: 422
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    render json: comment
  end

  def index
    artwork_id = params[:artwork_id]
    user_id = params[:user_id]
    if artwork_id
      comments = Comment.where(artwork_id: artwork_id)
    elsif user_id
      comments = Comment.where(user_id: user_id)
    else
      comments = Comment.all
    end
    render json: comments
  end

  def comment_params
    params.require(:comment).permit(:body, :artwork_id, :user_id)
  end
  
end