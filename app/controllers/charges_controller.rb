class ChargesController < ApplicationController

  def new
  end

  def create
  # Amount in cents = 
  # something like - Purchase.joins(:products).where('user.email') => current_user.email
  @amount = 500

  customer = Stripe::Customer.create(
    :email => "kevin.mcalear@gmail.com",
    :card  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'usd'
  )


  #binding.pry
  #respond_to do |format|
    #if charge.create
      
      UserMailer.purchase_email.deliver

      #format.html { redirect_to(charges_path) }
      redirect_to(charges_path)
      # format.json { render json: customer, status: :created, location: customer }

    #end
  #end

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path

  end

end
