class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item, only: [:index, :create]
  before_action :redirect_if_sold_or_owner, only: [:index, :create]

  def index
    @order_address = OrderAddress.new
    @item = Item.includes(:user).find(params[:item_id])
  end

  def create
    @item = Item.includes(:user).find(params[:item_id])
    @order_address = OrderAddress.new(order_params)
    if @order_address.valid?
      @order_address.save
      redirect_to root_path
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def order_params
    params.require(:order_address).permit(:postal_code, :prefecture, :city, :house_number, :building_name, :phone_number).merge(user_id: current_user.id, item_id: params[:item_id])
  end

  def set_item
    @item = Item.find(params[:item_id])
  end

  def redirect_if_sold_or_owner
    if @item.order.present? || current_user.id == @item.user_id
      redirect_to root_path
    end
  end
end