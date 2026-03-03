FactoryBot.define do
  factory :item do
    item_name { Faker::Commerce.product_name }
    item_info { Faker::Lorem.sentence }
    item_price { 1111 }

    item_category_id { 2 }
    item_sales_status_id { 3 }
    item_shipping_fee_status_id { 4 }
    prefecture_id { 3 }
    item_scheduled_delivery_id { 2 }

    association :user

    after(:build) do |item|
      item.item_image.attach(
        io: File.open(Rails.root.join('spec/fixtures/test_image.png')),
        filename: 'test_image.png',
        content_type: 'image/png'
      )
    end
  end
end
