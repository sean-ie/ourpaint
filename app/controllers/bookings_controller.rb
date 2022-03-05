class BookingsController < ApplicationController
  def index
    @booking = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    @booking.paint = @paint
  end

  def new
    @booking = Booking.new
    @paint = Paint.find(params[:paint_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @paint = Paint.find(params[:paint_id])
    @booking.paint = @paint
    @booking.user = current_user
    if @booking.save
      redirect_to paint_path(@paint)
    else
      render "new"
    end
  end
end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :paint_id, :user_id)
  end
