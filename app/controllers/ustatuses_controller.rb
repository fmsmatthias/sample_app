class UstatusesController < ApplicationController

before_filter :chk_admin

def index
@ustatuses = Ustatus.all
end

def new
@ustatus = Ustatus.new
end

def edit
@user = User.find(params[:id])
@ustatus = Ustatus.new
@ustatus.user_id = @user.id
@statusall=Statusvalue.all
end

  def create
    @ustatus = Ustatus.new(params[:ustatus])
#    @statusvalue = Statusvalue.find_by_id(params[:status])
#    @user = User.find_by_id(user_id)
#    @ustatus.user_id = @user.id   
    @user    = User.find_by_id(@ustatus.user_id)
    if @ustatus.save
      flash[:success] = "Status created!"
      redirect_to @user
    else
      render 'static_pages/home'
    end
  end

def show
@ustatus = Ustatus.new
end

  def destroy
    @ustatus = Ustatus.find(params[:id])
    @user = User.find_by_id(@ustatus.user_id)
    if @ustatus.destroy
      flash[:success] = "Status Deleted"
      redirect_to @user
    end
  end

 private

  def chk_admin
    if is_admin?
    else
      redirect_to(signin_path)
    end
  end

end

