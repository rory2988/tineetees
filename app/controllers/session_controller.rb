class SessionController < ApplicationController

  def new 
  end

  def create
    user = User.find_by(email: params[:email])

    if user && ( user.authenticate(params[:password]) ) && user.type == "Supplier"
      session[:user_id] = user.id
      redirect_to ( '/admin-dash' )

    elsif user && ( user.authenticate(params[:password]) ) && user.type == "Admin" 
      session[:user_id] = user.id
      redirect_to ( '/admin-dash')

    elsif user && ( user.authenticate(params[:password]) ) 
      session[:user_id] = user.id
      redirect_to ( '/' )
    end

  end

  def update_cart
    index = params[:index]
    index = index.to_i
    session["cart"].delete_at(index)
    render json: session["cart"][index]
  end 


end