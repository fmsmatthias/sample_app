class BookingsController < ApplicationController

def new
@user=User.find_by_id(params[:user_id])
@booking=Booking.new
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
    @user    = User.find_by_id(params[:user_id])
    @booking = Booking.find_by_user_id(params[:user_id])
     if @booking.update_attributes(params[:booking])
       flash[:success] = "Booking has been updated!"
       redirect_to @user
     else
       render 'edit'
    end
  end


end
