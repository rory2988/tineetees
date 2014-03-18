class UserMailer < ActionMailer::Base
  default to: "tineetees@gmail.com"


  def contact_email
    # @user = user
    mail(from: @contact.email, subject: "New Contact Message!")
  end

end