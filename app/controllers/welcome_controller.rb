class WelcomeController < ApplicationController
  def index
  end

  def company
  end

  def products
  end

  def news
  end

  def factory
  end

  def case
  end

  def contact_us
  end

  def message
    @name = params[:Name]
    @tel = params[:Tel]
    @email = params[:Email]
    @content = params[:Content]
    UserMailer.with(name: @name, tel: @tel, email: @email, content: @content).welcome_email.deliver_now
  end

  def robots
    robots = File.read(Rails.root + "config/robots.#{Rails.env}.txt")
    render :text => robots, :layout => false, :content_type => "text/plain"
  end

end
