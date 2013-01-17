# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
SampleApp::Application.initialize!

ActionMailer::Base.delivery_method = :smtp


ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.strato.com', ENV['FMS_ADR'],
    :domain         => 'www.biot06.com',  ENV['FMS_DOM'],
    :port           => 587,
    :user_name      => 'studio@biot06.com', ENV['FMS_USR'],
    :password       => '9%wetter65x',       ENV['FMS_PWR'],
    :authentication => :plain
}


