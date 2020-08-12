require 'test_helper'

class AppointmentMailerTest < ActionMailer::TestCase
  test "user_accepted_appointment" do
    mail = AppointmentMailer.user_accepted_appointment
    assert_equal "User accepted appointment", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
