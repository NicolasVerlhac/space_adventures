class VehiculesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @vehicules = policy_scope(Vehicule).order(created_at: :desc)

    if params[:query].present?

      sql_query = "category ILIKE :query OR address ILIKE :query OR city ILIKE :query OR country ILIKE :query"
      @vehicules = Vehicule.where(sql_query, query: "%#{params[:query]}%")





    end

    @markers = @vehicules.map do |vehicule|
      {
        "lat" => vehicule.latitude,
        "lng" => vehicule.longitude
      }
    end
  end

  def show
    # @vehicule = Vehicule.find_by(id: params[:id])
    # @vehicule = Vehicule.where(id: params[:id])
    @vehicule = Vehicule.find_by_id(params[:id])
    authorize(@vehicule)
  end

  def new
    @vehicule = Vehicule.new
    authorize(@vehicule)
  end

  def create
    @vehicule = Vehicule.new(vehicule_params)
    authorize(@vehicule)
    @vehicule.user = current_user
    if @vehicule.save
      redirect_to vehicule_path(@vehicule)
    else
      render :new
    end
  end

  def edit
    @vehicule = Vehicule.find(params[:id])
    authorize(@vehicule)
  end

  def update
    @vehicule = Vehicule.find(params[:id])
    @vehicule.update(vehicule_params)
    redirect_to vehicule_path(@vehicule)
  end

  def destroy
  end

  def vehicule_params
    params
    .require(:vehicule)
    .permit(:title, :user_id, :description, :photo, :category, :capacity, :country, :city, :address, :daily_price, :permit, :availability)
  end
end
