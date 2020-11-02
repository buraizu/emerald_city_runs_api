class RunsController < ApplicationController
  before_action :authenticate_user, only: [:update, :destroy, :create]
  # comment
  def index
    @runs = current_user.runs
    render json: @runs, status: 200
  end

  def create
    @run = current_user.runs.build(run_params)
    if @run && @run.save
      render json: @run
    else
      render json: { message: run.errors }, status: 400
    end
  end


  def update
    @run = Run.find_by(id: params[:id])
    @run.update(run_params)
    render json: @run
  end

  def destroy
    @run = Run.find_by(id: params[:id])
    @run.delete
  end

  private

  def run_params
    params.require(:run).permit(:course, :distance, :time, :review, :rating)
  end

end
