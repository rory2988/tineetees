require 'spec_helper'

describe "a user can contact the admin" do 
  let(:admin) {FactoryGirl.create(:user, type: "Admin")}
  let(:user) {FactoryGirl.create(:user, type: "Customer", email: "email@email.com")}

  it "allows a customer to contact the admin" do 
    # login(user)
    # click link "contact" 
    visit contact_path
    expect(page).to have_content "Contact Us" 
    fill_in :first_name, with: user.first_name
    fill_in :email, with: user.email
    fill_in :your_message, with: "i love these tiny tees!"
    click_button "Send"
  end
end