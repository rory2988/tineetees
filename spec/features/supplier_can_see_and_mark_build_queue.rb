require 'spec_helper'

describe "a supplier can log in" do
  let!(:supplier) {Supplier.create(first_name: "Yolanda", email: "yolanda@tineetees.co", password: "tees", password_confirmation: "tees")}

  let!(:order) {FactoryGirl.create(:product, on_order: 5)}

  # it "logs in" do
  #   login(supplier)

  #   within ".build_queue" do
  #     expect(page).to have_content "Hello, #{supplier.first_name}"
  #   end
  # end

  it "can mark orders as complete" do
    visit "/supplier"
    save_and_open_page

    expect(page).to have_content(order.name)
    expect(page).to have_content(order.on_order)

    within(:css, 'ul.product_names') do
      first(:css, 'input.complete').set(true)
      expect(page).should have_content(4)
    end
  end

  def login(supplier)
    visit "/supplier"
    # click_link "Log in"
    # fill_in :email, with: supplier.email
    # fill_in :password, with: supplier.password
    # click_button "Log in"
  end
end

