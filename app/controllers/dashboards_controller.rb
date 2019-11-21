class DashboardsController < ApplicationController

  def profile
    # @bookings = current_user.bookings
    # .....
    authorize :dashboard, :profile?
  end

end

