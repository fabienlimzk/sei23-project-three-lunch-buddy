class AppointmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @appointments = Appointment.all
  end

  def show
  end

  def new
    @appointment = Appointment.new
    @user = User.find(current_user.id)
  end

  def create
    @user = User.find(current_user.id)
    @appointment = @user.appointments_posted.build(appointment_params)
    @appointment.status = "available"
    if @appointment.save
      redirect_to user_appointments_path(current_user.id)
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

  private 

  def appointment_params
    params.require(:appointment).permit(:content, :poster_id, :location_list, :cuisine_list, :price_list, price_selects: [], location_selects: [], cuisine_selects: [])
  end
end
