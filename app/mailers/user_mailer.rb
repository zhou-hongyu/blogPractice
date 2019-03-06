class UserMailer < ApplicationMailer
  default from: 'no-reply@tiekangmachinery.com'

  def welcome_email
    @url = "www.tiekangmachinery.com"
    @name = params[:name]
    @tel = params[:tel]
    @email = params[:email]
    @content = params[:content]
    mail(to: "tiekangmachinery@gmail.com", subject: "New inquery!")
  end
end
