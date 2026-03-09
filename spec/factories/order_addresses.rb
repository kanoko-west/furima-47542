FactoryBot.define do
  factory :order_address do
    postal_code { '123-4567' }
    prefecture { 2 }
    city { '東京都' }
    house_number { '1' }
    phone_number { '09012345678' }
  end
end
