# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
SampleApp::Application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.googlemail.com',
    :domain         => 'domain.pl',
    :port           => 587,
    :user_name      => 'matthias.scheele06@googlemail.com',
    :password       => '1%femme06xx',
    :authentication => :plain
}
