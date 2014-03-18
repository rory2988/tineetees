class UserMailer < ActionMailer::Base
  default from: "tineetees@gmail.com"


  def purchase_email
    # @user = user
    mail(to: "rorybudnick@gmail.com", subject: "New Purchase Has Been Made")
  end

end
