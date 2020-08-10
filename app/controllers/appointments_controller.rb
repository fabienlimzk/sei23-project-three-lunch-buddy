class AppointmentsController < ApplicationController
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
    @appointment = @user.appointments.build(appointment_params)

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
    params.require(:appointment).permit(:content, :status, :user_id, :location_list, location_selects: [])
  end
end
