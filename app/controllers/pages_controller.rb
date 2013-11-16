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
#   UserMailer.welcome_email(@user).deliver
   redirect_to request.referer, :flash => { :success => "E-mail has been sent!" }
  end

  def booking_list
    if is_admin?
#todo: change order of loops
      @names = Address.all
      @booklist = []  
      @names.each do |name|
      @bookings = Booking.where("user_id=?", name.user_id)
      @bookings.each do |booking|
        book = Blist.new
         bdet = booking
          if not bdet.nil?
            book.fname = name.fname
            book.lname = name.lname
            if not bdet.adate.nil?
              book.adate = bdet.adate.strftime("%Y.%m.%d")
            end
            if not bdet.ddate.nil?
              book.ddate = bdet.ddate.strftime("%Y.%m.%d")
            end
#           book.adate = bdet.adate
#           book.ddate = bdet.ddate
            book.nights = bdet.nights
            book.people = bdet.people
            book.cleaning = bdet.cleaning
            book.price = bdet.price
            book.downp = bdet.downp
            book.user  = User.find_by_id(name.user_id)
            @booklist += [book]      
          end
        end
      end
    else
      redirect_to signin_path
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
