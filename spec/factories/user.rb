FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email } 
    firstname { Faker::Name.first_name }
    lastname { Faker::Name.last_name }
    phone_number { Faker::PhoneNumber.cell_phone }
    billing_address { Faker::Address.street_name }
    shipping_address { Faker::Address.street_name }
    password "jess"
    password_confirmation "jess"
    payment_info "?"
    contact [true, false].sample
    type "customer"
  end
end