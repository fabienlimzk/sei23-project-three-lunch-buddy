class AppointmentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.appointment_mailer.user_accepted_appointment.subject
  #
  def user_accepted_appointment
    @poster = params[:poster]
    @respondent = params[:respondent]
    @appointment = params[:appointment]
    
    mail to:[@poster.email, @respondent.email], subject:"Hooray! #{@respondent.username} and #{@poster.username} are now lunch buddies! (Appointment: #{@appointment.title})"
  end
end
