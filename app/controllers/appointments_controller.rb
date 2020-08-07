class AppointmentsController < ApplicationController
  def index
  end

  def show
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

  private 

  def appointment_params
    params.require(:appointment).permit(:content, :status, :location_list)
  end
end
