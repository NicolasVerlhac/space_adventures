class DashboardsController < ApplicationController

  def profile
    authorize :dashboard, :profile?
    # => current_user bookings as renter
    @bookings = current_user.bookings

    # => current_user bookings as owner
    #?????
    @bookings_as_owner = Booking.joins(:vehicule).where(:vehicules => { :user_id => @current_user.id })


    # => current_user vehicules
    @vehicules = current_user.vehicules



  end


end

