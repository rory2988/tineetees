require 'spec_helper'

describe "a supplier can log in" do
  let(:supplier) {Supplier.create(first_name: "Yolanda", email: "yolanda@tineetees.co", password: "tees", password_confirmation: "tees")}

  let(:order) {FactoryGirl.create(:product, on_order: 5)}

  it "logs in" do
    login(supplier)

    within ".dashboard" do
      expect(page).to have_content "Hello, #{supplier.first_name}"
    end
  end

  it "can mark orders as complete" do

    expect(page).should have_content(order.name)
    expect(page).should have_content(order.on_order)

    within(:css, 'ul') do
      check('Complete')
      expect(page).should have_content(4)
    end
  end

  def login(supplier)
    visit "/supplier"
    click_link "Log in"
    fill_in :email, with: supplier.email
    fill_in :password, with: supplier.password
    click_button "Log in"
  end
end

