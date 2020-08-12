class PricesController < ApplicationController
  before_action :authenticate_user!

  def index
    @price = Price.new
    @prices = Price.all
  end

  def show
    @price = Price.find(params[:id])
  end


  def new
    @price = Price.new
  end

  def create
    @prices = Price.all
    @price = Price.new(price_params)
    if @price.save
      flash[:notice] = 'Price Range created'
      redirect_to prices_path
    else
      render :index
    end
  end

  def edit 
    @price = Price.find(params[:id])
  end

  def update
    @price = Price.find(params[:id])
    if @price.update(price_params)
      redirect_to prices_path
    else 
      render :edit
    end
  end

  def destroy
    @price = Price.find(params[:id]).destroy
    redirect_to prices_path
  end

  private
  def price_params
    params.require(:price).permit(:name)
  end
end
