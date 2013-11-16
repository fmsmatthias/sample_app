class UsersController < ApplicationController
  before_filter :signed_in_user, only: [:edit, :update]
  before_filter :correct_user,   only: [:edit, :update]

  def show
    correct_user
    @user = User.find(params[:id])
    @title = @user.name
    @address = Address.find_by_user_id(@user.id)
    @ustatus = Ustatus.where("user_id=?", @user.id)
    @booking = Booking.where(user_id: @user.id).last
 end

   def index
    admin_user
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      UserMailer.welcome_email(@user).deliver
      redirect_to @user, :flash => { :success => "Your Account has been created!" }
    else
      @title = "Sign up"
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @address = Address.find_by_user_id(params[:id])
    if @address.present?
      @address.destroy
    end
    @ustatus = Ustatus.find_by_user_id(params[:id])
    if @ustatus.present?
      @ustatus.destroy
    end
    @Booking = Booking.find_by_user_id(params[:id])
    if @booking.present?
      @booking.destroy
    end
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end

  def send_pdf
    send_file '/home/railsway/downloads/huge.zip', :type=>"application/zip" 
    redirect_to root_path
  end

  def changepwd
    correct_user
    @user = User.find(params[:id])
  end

  def changepwdupd
    @user = User.find(params[:id])
    user = User.authenticate(@user.email, params[:changepwd][:password])
    if user.nil?
      flash[:error] = "Password not correct"  
      render 'changepwd'
    else
 #     if params[:changepwd][:new_password] == params[:changepwd][:password_confirmation]
     @user.password = params[:changepwd][:new_password]
     @user.password_confirmation = params[:changepwd][:password_confirmation]  
     if @user.update_attributes(params[:user])
      flash[:success] = "password successfully changed"
      sign_in @user
      redirect_to @user
      else
        flash[:error] = "Passwords don't match or too small"  
        render 'changepwd'
      end
    end
    
  end



  private

    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_path, notice: "Please sign in."
      end
    end

    def correct_user
      @user = User.find(params[:id])
#       redirect_to(signin_path) unless current_user?(@user)
       unless ( current_user?(@user) or is_admin? ) and signed_in?
         redirect_to(signin_path)
       end
    end

     def admin_user
      unless signed_in? and is_admin?  
        redirect_to signin_path, notice: "Please sign in as admin."
      end
    end

end
