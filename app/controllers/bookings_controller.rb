class BookingsController < ApplicationController

  def index
    @booking = Booking.all
  end

  def show
    @booking = Booking.find_by_id(params[:id])
    authorize(@vehicule)
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


  # def edit
  # end

  # def update
  # end

  def destroy
  end

  def review_edit
    @booking = Booking.find(params[:id])
    authorize(@booking)
    @booking.user = current_user

  end

  def review_update
    @booking = Booking.find(params[:id])
    authorize(@booking)
    @booking.update(review_params)

    redirect_to profile_path
  end


  private

  def review_params
    params.require(:review).permit(:content)
  end

private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def review_params
    params.require(:booking).permit(:owner_review, :owner_rating, :renter_review, :renter_rating)
  end
end
