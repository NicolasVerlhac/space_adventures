class BookingsController < ApplicationController

  def index
    @booking = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
    authorize(@booking)
  end

  def create
    @booking = Booking.new(booking_params)
    authorize(@booking)
    @booking.user = current_user
    @booking.vehicule = Vehicule.find(params[:vehicule_id])
    if @booking.save!
      redirect_to profile_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
