class UserNotifierMailer < ApplicationMailer

def send_signup_email(user)
    @user = user
    mail( :to => @user.email,
    :subject => 'Thanks for signing up for our shopping cart app' )
  end

end
