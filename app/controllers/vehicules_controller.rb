class VehiculesController < ApplicationController
  def index
    @vehicules = Vehicule.all
  end

  def show
    @vehicule = Vehicule.find_by(params[:id])
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
