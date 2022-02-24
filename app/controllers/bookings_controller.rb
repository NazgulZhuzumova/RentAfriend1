class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.friend = Friend.find(params[:friend_id])
    if @booking.save!
      redirect_to friends_path, notice: "Made a new booking! :)"
    else
      render "friends/index"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :location)
  end
end
