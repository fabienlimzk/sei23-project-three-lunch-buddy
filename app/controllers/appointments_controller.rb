class AppointmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
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
    params.require(:appointment).permit(:title, :start_time, :end_time, :content, :poster_id, price_selects: [], location_selects: [], cuisine_selects: [])
  end
end
