require 'rails_helper'
require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品出品機能' do
    context '新規出品できる場合' do
      it "item_image、item_name、item_info、item_category_id、item_sales_status、item_shipping_fee_status、prefecture、item_scheduled_delivery、item_priceが存在すれば登録できる" do
        expect(@item).to be_valid
      end
    end

    context '新規出品できない場合' do
      it "item_imageが空では登録できない" do
        @item.item_image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Item image can't be blank")
      end
      
      it "item_nameが空では登録できない" do
        @item.item_name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Item name can't be blank")
      end
      it "item_infoが空では登録できない" do
        @item.item_info = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Item info can't be blank")
      end
      it "item_category_idがnilでは登録できない" do
        @item.item_category_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Item category can't be blank")
      end
      it "item_category_idが1では登録できない" do
        @item.item_category_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Item category can't be blank")
      end
      it "item_sales_status_idがnilでは登録できない" do
        @item.item_sales_status_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Item sales status can't be blank")
      end
      it "item_sales_status_idが1では登録できない" do
        @item.item_sales_status_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Item sales status can't be blank")
      end
      it "item_shipping_fee_status_idがnilでは登録できない" do
        @item.item_shipping_fee_status_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Item shipping fee status can't be blank")
      end
      it "item_shipping_fee_status_idが1では登録できない" do
        @item.item_shipping_fee_status_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Item shipping fee status can't be blank")
      end
      it "prefecture_idがnilでは登録できない" do
        @item.prefecture_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Prefecture can't be blank")
      end
      it "prefecture_idが1では登録できない" do
        @item.prefecture_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Prefecture can't be blank")
      end
      it "item_scheduled_delivery_idがnilでは登録できない" do
        @item.item_scheduled_delivery_id = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Item scheduled delivery can't be blank")
      end
      it "item_scheduled_delivery_idが1では登録できない" do
        @item.item_scheduled_delivery_id = 1
        @item.valid?
        expect(@item.errors.full_messages).to include("Item scheduled delivery can't be blank")
      end
      it "item_priceが空では登録できない" do
        @item.item_price = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Item price can't be blank")
      end
    end
  end
end
