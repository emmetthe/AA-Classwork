class PostsController < ApplicationController

  before_action :require_login, except: [:show]

  def new
    @post = Post.new 
    render :new
  end

  def show 
    @post = Post.find(params[:id])
    render :show 
  end

  def edit 
    @post = Post.find(params[:id])
    render :edit 
  end

  def create 
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_url(@post)
    else
      flash.now[:errors] = @post.errors.full_messages
      render :new
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to post_url(@post)
    else
      flash.now[:errors] = @post.errors.full_messages
      render :edit
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :url, :content)
  end
end
