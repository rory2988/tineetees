class SessionController < ApplicationController

  def new 
  end

  def create
    user = User.find_by(email: params[:email])

    if user && ( user.authenticate(params[:password]) ) && user.type == "supplier"
      session[:user_id] = user.id
      redirect_to ( 'admin/dash' )

    elsif user && ( user.authenticate(params[:password]) ) && user.type == "admin" 
      session[:user_id] = user.id
      redirect_to ( 'admin/dash')

    elsif user && ( user.authenticate(params[:password]) ) 
      session[:user_id] = user.id
      redirect_to ( '/' )
    end

  end


end