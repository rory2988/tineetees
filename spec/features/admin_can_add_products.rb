require 'spec_helper'

describe "an admin can add products" do
  let(:admin) {FactoryGirl.create(:user, type: "admin")}

  let(:new_product) {FactoryGirl.create(:product)}

  it "allows admins to add products" do
    login(admin)
    click_button "Add New Product"
    fill_in :name, with: new_product.name
    fill_in :description, with: new_product.description
    fill_in :image, with: new_product.image
    fill_in :price, with: new_product.price
    fill_in :sold, with: new_product.sold
    fill_in :on_hand, with: new_product.on_hand
    fill_in :on_order, with: new_product.on_order
    click_button "Add Product"
  

    within ".product-list" do
      expect(page).to have_content new_product.name 
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