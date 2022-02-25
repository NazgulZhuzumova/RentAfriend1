class BookingsController < ApplicationController
  def index
    @friends_bookings = Booking.all.select do |booking|
      booking.friend.user == current_user
    end
    @accepted_bookings = current_user.bookings.select do |booking|
      booking.approved == true
    end
    @pending_bookings = current_user.bookings.select do |booking|
      booking.approved.nil?
    end
  end



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

  def update
    @booking_request = Booking.find(params[:id])
    @booking_request.approved = true
    @booking_request.save
    @friends_bookings = Booking.all.select do |booking|
      booking.friend.user == current_user && booking.approved = false
    end
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :location)
  end
end
