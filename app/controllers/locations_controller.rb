class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
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
