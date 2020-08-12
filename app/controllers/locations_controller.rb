class LocationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @location = Location.new
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    @locations = Location.all
    if @location.save
      flash[:notice] = 'New location created'
      redirect_to locations_path
    else
      render :index
    end
  end


  def edit 
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    if @location.update(location_params)
      redirect_to locations_path
    else 
      render :edit
    end
  end

  def destroy
    @location = Location.find(params[:id]).destroy
    redirect_to locations_path
  end

  private
  def location_params
    params.require(:location).permit(:name)
  end

end
