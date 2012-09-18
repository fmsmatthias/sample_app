class UstatusesController < ApplicationController

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
end

  def create
    @ustatus = Ustatus.new(params[:ustatus])
#    @user = User.find_by_id(user_id)
#    @ustatus.user_id = @user.id
    if @ustatus.save
      flash[:success] = "Status created!"
      redirect_to root_path
    else
      render 'static_pages/home'
    end
  end


def show
@ustatus = Ustatus.new
end



end

