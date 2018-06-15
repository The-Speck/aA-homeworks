class SessionsController < ApplicationController
  def new
    user = User.new
    render :new
  end
  
  def create
    email = user_params[:email]
    password = user_params[:password]
    user = User.find_by_credentials(email, password)
    if user
      login!(user)
      redirect_to users_url
    else
      render :new
    end
  end
  
  def destroy
    logout!
  end
  
  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end