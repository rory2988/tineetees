require 'spec_helper'

describe "a customer can add to cart" do 
  let(:user) {FactoryGirl.create(type: "customer", email: "abc@gmail.com", password: "abc", password_confirmation: "abc")}
  let(:new_product1) {FactoryGirl.create(:product)}
  let(:new_product2) {FactoryGirl.create(:product)}

  it "allows customer to add to cart" do 
    login(user)
    find("#1").click
    click_button "Add to Cart"

    expect(session[:cart].last[:id].to eq(1))

  end 


  def login(user)
    visit "/"
    click_link "Log in"
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_button "Log in"
  end

end 

##Add Validation against Inventory
##Add decrement for Inventory

