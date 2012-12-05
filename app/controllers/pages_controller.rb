class PagesController < ApplicationController

  def home
    #default language english
  end

  def ap1
   @title = "Apartment Nid de l'Airette"
   @rates = Rate.where("apartment = 1")
  end

  def ap2
   @title = "About Biot"
  end

  def ap2
   @title = "Activities in and around Biot"
  end

  def contact
   @title = "Contact:Hans Wurst"
  end

  def apx
   correct_user
   @title = "Dummy Page"
   @user = User.find_by_id(params[:umessage][:user_id])
   
   @text = params[:umessage][:text]
   UserMailer.smessage_email(@user, @text).deliver
   redirect_to request.referer, :flash => { :success => "E-mail has been sent!" }
  end

  def langude
    set_langu('DE')
    redirect_to request.referer
  end 

  def languen
    set_langu('EN')
    redirect_to request.referer
  end 

  def langufr
    set_langu('FR')
    redirect_to request.referer
  end 


end
