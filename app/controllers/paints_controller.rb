require "pry"
class PaintsController < ApplicationController
  before_action :find_paint, only: [:update, :show, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create]

  def index
    @paint = Paint.all
  end

  def show
    @paint = Paint.find(params[:id])
  end

  def new
    @paint = Paint.new
  end

  def create
    @paint = Paint.new(paint_params)
    @paint.user = current_user
    if @paint.save
      flash[:success] = "Thanks for recycling your paint and saving the planet!"
      redirect_to paint_path(@paint)
    else
      render :new
    end
  end

  def update
    @paint.update(paint_params)
  end

  def destroy
    @paint.destroy
  end

  private

  def find_paint
    @paint = Paint.find(params[:id])
  end

  def paint_params
    params.require(:paint).permit(:brand, :colour, :volume, :photo)
  end
end
