require 'spec_helper'

describe "a user makes a purchase" do

  it "goes thru" do
    visit new_charge_path
    click_button "Pay with Card" # FIXME this isn't working right now


    save_and_open_page
  end

end