class UserMailer < ActionMailer::Base
  default from: "tineetees@gmail.com"

  def purchase_email(user)
    @user = user
    mail(to: @user.email, subject: "New Purchase Has Been Made")
  end
end
