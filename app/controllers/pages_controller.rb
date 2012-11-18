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
