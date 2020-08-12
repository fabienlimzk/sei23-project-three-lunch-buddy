# Preview all emails at http://localhost:3000/rails/mailers/appointment_mailer
class AppointmentMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/appointment_mailer/user_accepted_appointment
  def user_accepted_appointment
    AppointmentMailer.with(poster: User.last, respondent: User.first, appointment: Appointment.first).user_accepted_appointment
  end
end
