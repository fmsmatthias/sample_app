class AddressesController < ApplicationController
#  before_filter :signed_in_user, only: [:create, :destroy]

  def index
      @addresses = Address.all
  end

  def new
    @address = Address.new
#    @user    = User.find(2)
  end

  def create
    @address = Address.new(params[:address])
    @user    = User.find_by_id(@address.user_id)
#    @address.user_id = current_user.id
    if @address.save
      flash[:success] = "Address created!"
      redirect_to @user
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  def edit
    @user = User.find(params[:id])
    uid = @user.id
    @address = Address.find_by_user_id(uid)
    if @address.nil?
      @address = Address.new
      @address.user_id = @user.id
      @address.streetno = "Street"
      @address.zip      = "123"
      @address.city     = "City"
      @address.country  = "Country"
      @address.phone1   = "123"
      @address.phonem   = "123"
    end
  end

  def update
     @address = Address.new(params[:address]) 
     @user    = User.find_by_id(@address.user_id)
     @address2 = Address.find_by_user_id(@address.user_id)
 #   if @address2.nil?
 #     if @address.save
 #       flash[:success] = "Adress created"
 #       redirect_to current_user
 #     else
 #       render 'edit'
 #    end
 #   else
      if @address2.update_attributes(params[:address])
        flash[:success] = "Adress changed"
        redirect_to @user
      else
        render 'edit'
      end
 #   end
  end

end
