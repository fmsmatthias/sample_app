class BookingsController < ApplicationController

def new
@user=User.find_by_id(params[:user_id])
@booking=Booking.new
@booking.user_id=@user.id
end

  def create
    @booking = Booking.new(params[:booking])
    @user    = User.find_by_id(params[:user_id])
    @booking.user_id = @user.id

    if @booking.save
      flash[:success] = "Booking created!"
      redirect_to @user
    else
      render 'static_pages/home'
    end
  end

    def edit
    @user = User.find(params[:user_id])
    uid = @user.id
    @booking = Booking.find_by_user_id(uid)
    if @booking.nil?
    end
  end

  def update
     @address = Address.new(params[:address]) 
     @user    = User.find_by_id(@address.user_id)
     @address2 = Address.find_by_user_id(@address.user_id)
      if @address2.update_attributes(params[:address])
        flash[:success] = "Adress changed"
        redirect_to @user
      else
        render 'edit'
      end
  end


end
