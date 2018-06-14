class UsersController < ApplicationController
  
  def new
    @user = User.new
    render :new
  end
  
  def create
    user = User.create(user_params)
    
    if user.save
      session[:session_token] = user.session_token
      redirect_to :new
    else
      render :new
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:email, :password)
  end
end