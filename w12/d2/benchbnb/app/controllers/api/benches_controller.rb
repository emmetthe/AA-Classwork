class Api::BenchesController < ApplicationController
  before_action :require_logged_in, only: [:create]

  def index
    @bench = Bench.all
    render :index
  end

  def create
    @bench = Bench.create!(bench_params)
    render :show
  end

  def show
    @bench = Bench.find(params[:id])
  end

  def bench_params
    params.require(:bench).permit(
      :lat,
      :lng,
      :description
    )
  end

end
