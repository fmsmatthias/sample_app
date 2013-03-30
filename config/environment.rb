# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
SampleApp::Application.initialize!

ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.strato.com',
    :domain         => 'www.biot06.com',  
    :port           => 587,
    :user_name      => 'studio@biot06.com', 
    :password       => '69wetter06xx',       
    :authentication => :plain
}



