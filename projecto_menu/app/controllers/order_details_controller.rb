class OrderDetailsController < ApplicationController
  before_action :set_order_detail, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  respond_to :html

  def index
    @order_details = OrderDetail.all
    respond_with(@order_details)
  end

  def show
    respond_with(@order_detail)
  end

  def new
    @order_detail = OrderDetail.new
    respond_with(@order_detail)
  end

  def edit
  end

  def create
    @order_detail = OrderDetail.new(order_detail_params)
    @order_detail.save
    respond_with(@order_detail)
  end

  def update
    @order_detail.update(order_detail_params)
    respond_with(@order_detail)
  end

  def destroy
    @order_detail.destroy
    respond_with(@order_detail)
  end

  private
    def set_order_detail
      @order_detail = OrderDetail.find(params[:id])
    end

    def order_detail_params
      params.require(:order_detail).permit(:cant_dishes, :order_headers_id)
    end
end
