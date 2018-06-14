class UserMailer < ApplicationMailer
  default from: 'everybody@appacademy.io'

  def welcome_email(user)
    @user = user
    @url = 'http://localhost:3000/session/new'
    mail(to: "test@test.com", subject: 'Welcome to 99 Cats!')
  end

end
