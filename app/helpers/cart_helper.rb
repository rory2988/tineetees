module CartHelper

  def add_to_cart( product )
    session[:cart] ||= []
    session[:cart].push product
  end

end