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
   current_user
   @title = "Dummy Page"
   @user = User.find_by_id(params[:umessage][:user_id])
   @text = params[:umessage][:text]
   UserMailer.smessage_email(@user, @text).deliver
   redirect_to request.referer, :flash => { :success => "E-mail has been sent!" }
  end

  def booking_list
    @names = Address.order("lname")

    @booklist = []
    
    @names.each do |name|
    book = Blist.new
    bdet = Booking.find_by_user_id(name.user_id)
 
    book.fname = name.fname
    book.lname = name.lname
    if not bdet.nil?
    book.adate = bdet.adate.strftime("%m/%d/%Y")
    book.ddate = bdet.ddate.strftime("%m/%d/%Y")
    book.nights = bdet.nights
    book.people = bdet.people
    book.cleaning = bdet.cleaning
    book.price = bdet.price
    book.downp = bdet.downp
    end
    @booklist += [book]
    end

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
