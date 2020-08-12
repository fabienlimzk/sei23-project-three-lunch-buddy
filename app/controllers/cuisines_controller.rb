class CuisinesController < ApplicationController
  before_action :authenticate_user!

  def index
    @cuisine = Cuisine.new
    @cuisines = Cuisine.all
  end

  def show
    @cuisine = Cuisine.find(params[:id])
  end

  def new
    @cuisines = Cuisine.all
    @cuisine = Cuisine.new
  end

  def create
    @cuisines = Cuisine.all
    @cuisine = Cuisine.new(cuisine_params)
    if @cuisine.save
      flash[:notice] = 'New cuisine created'
      redirect_to cuisines_path
    else
      render :index
    end
  end

  def edit 
    @cuisine = Cuisine.find(params[:id])
  end

  def update
    @cuisine = Cuisine.find(params[:id])
    if @cuisine.update(cuisine_params)
      redirect_to cuisines_path
    else 
      render :edit
    end
  end

  def destroy
    @cuisine = Cuisine.find(params[:id]).destroy
    redirect_to cuisines_path
  end

  private
  def cuisine_params
    params.require(:cuisine).permit(:name)
  end
end
