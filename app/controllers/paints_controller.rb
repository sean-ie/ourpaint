
class PaintsController < ApplicationController
  before_action :find_paint, only: [:update, :show, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create]

  def index
    postcode = params[:postcode]

    @paints = Paint.near(postcode, 10)

     @markers = @paints.geocoded.map do |paint|
      {
        lat: paint.latitude,
        lng: paint.longitude,
        info_window: render_to_string(partial: "info_window", locals: { paint: paint }),
        image_url: helpers.asset_url('paint_marker.svg')
      }
    end
  end

  def show
    @paint = Paint.find(params[:id])
    @booking = Booking.new

    @markers =[
      {
        lat: @paint.latitude,
        lng: @paint.longitude,
        info_window: render_to_string(partial: "info_window", locals: { paint: @paint }),
        image_url: helpers.asset_url('paint_marker.svg')
      }]
  end

  def new
    @paint = Paint.new
  end

  def create
    @paint = Paint.new(paint_params)
    @paint.user = current_user
    if @paint.save

      flash[:notice] = "Thanks for recycling your paint and saving the planet!"


      redirect_to paint_path(@paint)


    else
      render :new
    end
  end

  def edit
    @paint = Paint.find(params[:id])
  end

  def update
    @paint = Paint.find(params[:id])
    @paint.update(paint_params)
    #@paint.user = current_user
    redirect_to paint_path(@paint)
  end

  def destroy
    @paint = Paint.find(params[:id])
    @paint.destroy
  end

  private

  def find_paint
    @paint = Paint.find(params[:id])
  end

  def paint_params
    params.require(:paint).permit(:brand, :colour, :volume, :photo, :address)
  end
end
