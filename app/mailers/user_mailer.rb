class UserMailer < ApplicationMailer
  default from: 'zhou.hongyu8976@gmail.com'

  def welcome_email
    @url = "www.tiekangmachinery.com"
    @tel = params[:tel]
    @email = params[:email]
    @content = params[:content]
    mail(to: "tiekangmachinery@gmail.com", subject: "New inquery!")
  end
end
