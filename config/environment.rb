# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => "postmaster@sandbox73ab0d030415414db737376ef2503772.mailgun.org",
  :domain => 'sandbox73ab0d030415414db737376ef2503772.mailgun.org',
  :address => "smtp.mailgun.org",
  :port =>  587,
  :authentication => :plain,
  :enable_starttls_auto => true,
  :password => "829c3a68481871a3e327d9b07c72e39f-07e45e2a-3c236265"
}