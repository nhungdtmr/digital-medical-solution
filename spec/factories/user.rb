FactoryBot.define do
  factory :user do
    name {FFake::Name.name}
    email {FFake::Internet.email}
    phone_number {FFake::PhoneNumber.phone_number}
    address {FFake::Address.street_address}
  end
end
