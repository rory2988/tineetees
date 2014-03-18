require 'spec_helper'

describe "an admin can log in" do
  let(:admin) { FactoryGirl.create(:user, type: "Admin") }

  it "logs in" do
      login(admin)
      save_and_open_page
    within ".dashboard" do
      expect(page).to have_content "Hello, #{admin.first_name}"
    end
  end

  def login(admin)
    visit "/"
    click_link "Log in"
    fill_in :email, with: admin.email
    fill_in :password, with: admin.password
    click_button "Log in"
  end
end

