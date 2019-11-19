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
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def params_vehicule
  end
end
