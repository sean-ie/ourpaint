class BookingsController < ApplicationController
  def index
    @booking = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @paint = Paint.find(params[:paint_id])
    @booking.paint = @paint
    @booking.user = current_user
    if @booking.save
      redirect_to user_bookings_path(@user)
    else
      render "form"
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
end
