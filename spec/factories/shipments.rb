# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :shipment do
    name "MyString"
    country "MyString"
    city "MyString"
    state "MyString"
    postal_code "MyString"
    length 1.5
    width 1.5
    height 1.5
    weight 1.5
    cylinder false
  end
end
