class UsersController < ApplicationController

  before_action :require_login, except: [:new, :create]

  def new
    @user = User.new
    render :new
  end

  def index
    @users = User.all
    render :index
  end

  def edit
    @user = User.find(params[:id])
    render :edit
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login(@user)
      redirect_to users_url
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_url(@user)
    else
      flash.now[:errors] = @user.errors.full_messages
    end
  end

  private 

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
