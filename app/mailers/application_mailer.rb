class ApplicationMailer < ActionMailer::Base
  default from: 'notifications@lunchbuddy.com'
  layout 'mailer'
end
