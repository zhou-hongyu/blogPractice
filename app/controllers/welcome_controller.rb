class WelcomeController < ApplicationController
  def index
    UserMailer.with(aa: "aa").welcome_email.deliver_now
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
    @ok = params[:Tel]
    @email = params[:Email]
    @content = params[:Content]
  end

end
