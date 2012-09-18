class PagesController < ApplicationController



  def home
   @user = "fisch"
   language = "EN"

   @home = "Homex"
   if language == "E"
     @ap1 = "Page 1"
   else
     @ap1  = "Seite 1"
   end
   
   @ap2  = "Seite2"
   @contact  = "Contact"
  end

  def ap1
   @title = "Apartment Nid de l'Airette"
   @rates = Rate.where("apartment = 1")
   @seasons = Season.where("langu = 'EN'")
  end

  def ap2
   @title = "ap2"
  end

  def contact
   @title = "Contact:Hans Wurst"
  end
end
