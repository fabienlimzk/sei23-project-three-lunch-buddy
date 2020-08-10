class AppointmentsController < ApplicationController
  def index
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
    params.require(:appointment).permit(:content, :status, :poster_id, :location_list, :cuisine_list, :price_list, price_selects: [], location_selects: [], cuisine_selects: [])
  end
end
