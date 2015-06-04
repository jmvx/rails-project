class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
  end
  
  def create
    @user = User.new(params.require(:user).permit(:name, :response))
    
    @user.save
    redirect_to @user
  end
  
end
