class PaintsController < ApplicationController
  before_action :find_paint, only: [:update, :show, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @paint = Paint.all

      @markers = @paint.geocoded.map do |paint|
        {
         lat: paint.latitude,
         lng: paint.longitude
        }
    end
  end

  def show
    @paint = Paint.find(params[:id])
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
    params.require(:paint).permit(:brand, :colour, :volume, :paint_image, :lng, :lat)
  end
end
