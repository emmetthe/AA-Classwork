class SubsController < ApplicationController

  before_action :require_login, except: [:index, :show]

  def new
    @sub = Sub.new
    render :new
  end

  def index
    @subs = Sub.all 
    render :index 
  end

  def show
    @sub = Sub.find(params[:id])
    render :show
  end

  def create 
    @sub = Sub.new(sub_params)
    @sub.mod_id = params[:user_id]
    if @sub.save
      redirect_to sub_url(@sub)
    else
      flash.now[:errors] = @sub.errors.full_messages
      render :new 
    end
  end

  def edit
    @sub = Sub.find(params[:id])
    render :edit
  end

  def update
    @sub = Sub.find(params[:id])
    
    if @sub.mod_id != current_user.id
      flash[:errors] = ["Cannot update sub unless you are a moderator"]
      redirect_to sub_url(@sub)
    elsif @sub.update(sub_params)
      redirect_to sub_url(@sub)
    else
      flash[:errors] = @sub.errors.full_messages
      render :edit
    end
  end

  private

  def sub_params 
    params.require(:sub).permit(:title, :description)
  end
end
