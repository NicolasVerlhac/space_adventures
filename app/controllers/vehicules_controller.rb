class VehiculesController < ApplicationController
  def index
    @vehicules = Vehicule.all
  end

  def show
    # @vehicule = Vehicule.find_by(id: params[:id])
    # @vehicule = Vehicule.where(id: params[:id])
    @vehicule = Vehicule.find_by_id(params[:id])
  end

  def new
    @vehicule = Vehicule.new
  end

  def create
    @vehicule = Vehicule.new(vehicule_params)
    @vehicule.user = current_user
    if @vehicule.save
      redirect_to vehicule_path(@vehicule)
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

  def vehicule_params
    params
    .require(:vehicule)
    .permit(:title, :user_id, :description, :photo, :category, :capacity, :country, :city, :address, :daily_price, :permit, :availability)
  end
end
