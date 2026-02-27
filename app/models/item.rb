class Item < ApplicationRecord
  belongs_to :user
  has_one :orders
  has_one_attached :image

  validates :item_name, :item_info, :item_category, :item_sales_status, :item_shipping_fee_status, :item_prefecture, :item_scheduled_delivery, :item_price, :item_image, presence:true
end
