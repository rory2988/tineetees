require 'spec_helper'

describe "a customer can view their shopping cart" do 
  let(:customer) {User.create(type: "customer", email: "abc@gmail.com", password: "abc", password_confirmation: "abc")}
  let(:product1) {Product.create(name: "Tiny", description: "TEST")}
  # let(:product1) {FactoryGirl.create(:product)}
  let(:product2) {Product.create(name: "Big", description: "TEST2")}

  it "allows customer to store their cart items in their session cart" do 
    add_to_cart(product1)
    add_to_cart(product2)
    expect(session["cart"].first["name"]).to eq("Tiny")
    expect(session["cart"].last["name"]).to eq("Big")   
  end 

  def add_to_cart(product)
    session[:cart] ||= []
    session[:cart].push product
  end 

end 