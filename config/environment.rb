# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
SampleApp::Application.initialize!

ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
    :address        => ' ',
    :domain         => ' ',
    :port           => 587,
    :user_name      => ' ',
    :password       => ' ',
    :authentication => :plain
}
