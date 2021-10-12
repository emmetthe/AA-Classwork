class UsersController < ApplicationController
  before_action :require_logged_in, [:show]
  before_action :require_logged_out, [:create, :new]

  def index
    @user = User.all
    render :index
  end
  def new
    @user = User.new
    render :new
  end

  def create
    user = User.new(user_params)
    if user.save
      login(user)
      redirect_to user_url(user)
    else
      render json: user.error.full_messages, status: 422
    end
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
