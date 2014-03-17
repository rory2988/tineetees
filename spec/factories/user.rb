FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email } 
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    phone_number { Faker::PhoneNumber.phone_number }
    billing_address { Faker::Address.street_name }
    shipping_address { Faker::Address.street_name }
    password "jess"
    password_confirmation "jess"
    # payment_info "?"
    contact [true, false].sample
    # type "customer"
  end
end