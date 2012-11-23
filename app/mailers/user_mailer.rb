class UserMailer < ActionMailer::Base
  default from: "studio@biot06.com"

  def welcome_email(user)
    @user = user
    @url  = "http://www.biot06.com/"
    mail(:to => user.email, :subject => "Welcome to Biot")
  end

end
