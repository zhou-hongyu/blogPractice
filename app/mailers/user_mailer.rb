class UserMailer < ApplicationMailer
  default from: 'zhou.hongyu8976@gmail.com'

  def welcome_email
    @url = "www.tiekangmachinery.com"
    mail(to: "zhou.hongyu8976@gmail.com", subject: 'Welcome to My Awesome Site')
  end
end
