# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
SampleApp::Application.initialize!

ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
    :address => ENV['FMS_ADR'],
    :domain => ENV['FMS_DOM'],
    :port => 587,
    :user_name => ENV['FMS_USR'],
    :password => ENV['FMS_PWR'],
    :authentication => :plain
}



