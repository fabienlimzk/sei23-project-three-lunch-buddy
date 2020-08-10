class PricesController < ApplicationController
  before_action :authenticate_user!

  def index
    @prices = Price.all
  end

  def show
    @price = Price.find(params[:id])
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
