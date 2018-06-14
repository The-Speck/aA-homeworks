class UsersController < ApplicationController
  
  def index
    User.all
    
    render :index
  end
  
  def show
    User.findy_by(params[:id])
  end
  
  def new
    @user = User.new
    render :new
  end
  
  def create
    user = User.new(user_params)
    if user.save
      session[:session_token] = user.session_token
      redirect_to users_url
    else
      render :new
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:email, :password)
  end
end