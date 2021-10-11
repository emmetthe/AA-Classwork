class CatsController < ApplicationController
  
  def index
    @cats = Cat.all 
    render :index
  end

  def show
    @cats = Cat.find(params[:id])
    render :show
  end

  def new 
    @cat = Cat.new
    render :new
  end
  
  def update
    @cat = Cat.find(params[:id])
    if @cat.update_attributes(cat_params)
      redirect_to cat_url(@cat)
    else
      render json: @cat.errors.full_messages, status: 422
    end
  end

  def create
    @cats = Cat.new(cats_params)
    if @cats.save
      redirect_to cat_url(@cats)
    else
      render json: @cats.errors.full_messages, status: 422
    end
  end

  def edit
    @cat = Cat.find(params[:id])
    render :edit
  end

  private
  def cats_params
    params.require(:cat).permit(:birth_date, :name, :color, :sex, :description, :age)
  end

end
