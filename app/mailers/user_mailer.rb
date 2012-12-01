class UserMailer < ActionMailer::Base
  default from: "studio@biot06.com"

  def welcome_email(user)
    @user = user
    @url  = "http://www.biot06.com/"
    mail(:to => user.email, :subject => "Welcome to Biot")
  end

  def smessage_email(user, text)
    @user = user
    @url  = "http://www.biot06.com/"
    @text = text
    
    mail(:to => "studio@biot06.com", :from => user.email, :subject => "Question from a User")
  end

end
