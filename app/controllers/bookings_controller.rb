class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user_id: current_user.id)
    @friends_bookings = Booking.all.select do |booking|
      booking.friend.user == current_user
    end

  end
end
