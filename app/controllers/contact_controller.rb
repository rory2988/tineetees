class ContactController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    # binding.pry
    @contact = Contact.new(contact_params)
    UserMailer.contact_email.deliver
    @contact.save
  end

private

  def contact_params
    params.permit(:your_message, :first_name, :email)
  end

end