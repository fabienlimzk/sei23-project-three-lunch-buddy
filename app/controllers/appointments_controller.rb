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
    @user = User.find(current_user.id)
    @appointment = Appointment.find(params[:id])
  end

  def update
    @user = User.find(current_user.id)
    @appointment = Appointment.find(params[:id])
    
    if @appointment.update(appointment_params)
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id]).destroy   
    if @appointment.destroy
      redirect_to user_path(current_user.id)
    end
  end

  def accept
    @user = User.find(current_user.id)
    @appointment = Appointment.find(params[:id])
    @appointment.status = "booked"
    @appointment.respondent_id = current_user.id
    if @appointment.save
      AppointmentMailer.with(appointment: @appointment, poster: @appointment.poster, respondent: @appointment.respondent).user_accepted_appointment.deliver
      redirect_to user_appointments_path(current_user.id)
    end  
  end

  def upvote
    @user = User.find(current_user.id)
    @appointment = Appointment.find(params[:id])
    @poster = User.find(@appointment.poster_id)
    @respondent = User.find(@appointment.respondent_id)
    if @user.id == @poster.id
      @respondent.reputation += 1
      @appointment.poster_has_reviewed = true
        if @respondent.save && @appointment.save
          redirect_to appointment_path(@appointment)
        else
          render :show
        end
    else 
      @poster.reputation += 1
      @appointment.respondent_has_reviewed = true
      if @poster.save && @appointment.save
        redirect_to appointment_path(@appointment)
      else
        render :show
      end
    end
  end

  def downvote
    @user = User.find(current_user.id)
    @appointment = Appointment.find(params[:id])
    @poster = User.find(@appointment.poster_id)
    @respondent = User.find(@appointment.respondent_id)
    if @user.id == @poster.id
      @respondent.reputation -= 1
      @appointment.poster_has_reviewed = true
        if @respondent.save && @appointment.save
          redirect_to appointment_path(@appointment)
        else
          render :show
        end
    else 
      @poster.reputation -= 1
      @appointment.respondent_has_reviewed = true
      if @poster.save && @appointment.save
        redirect_to appointment_path(@appointment)
      else
        render :show
      end
    end
  end

  private 

  def appointment_params
    params.require(:appointment).permit(:title, :start_time, :end_time, :content, :address, :city, :country, :poster_id, price_ids: [], location_ids: [], cuisine_ids: [])
  end
end