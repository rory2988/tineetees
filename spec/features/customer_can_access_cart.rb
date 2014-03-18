require 'spec-helper'

describe "a customer can view their shopping cart" do 
  let(:customer) {FactoryGirl.create(type: "customer", email: "abc@gmail.com", password: "abc", password_confirmation: "abc")}
  let(:product1) {FactoryGirl.create(:product)}
  let(:product2) {FactoryGirl.create(:product)}

  it "allows customers to view their shopping cart" do 
    login(customer)
    add_to_cart(product1)
    add_to_cart(product1)

  end 


  def login(customer)
    visit "/"
    click_link "Log in"
    fill_in :email, with: user.email
    fill_in :password, with: user.password
    click_button "Log in"
  end

end 