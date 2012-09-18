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

end
