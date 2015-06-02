class OrderHeadersController < ApplicationController
  before_action :set_order_header, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @order_headers = OrderHeader.all
    respond_with(@order_headers)
  end

  def show
    respond_with(@order_header)
  end

  def new
    @order_header = OrderHeader.new
    respond_with(@order_header)
  end

  def edit
  end

  def create
    @order_header = OrderHeader.new(order_header_params)
    @order_header.save
    respond_with(@order_header)
  end

  def update
    @order_header.update(order_header_params)
    respond_with(@order_header)
  end

  def destroy
    @order_header.destroy
    respond_with(@order_header)
  end

  private
    def set_order_header
      @order_header = OrderHeader.find(params[:id])
    end

    def order_header_params
      params.require(:order_header).permit(:date_order, :date_update, :date_canceled, :observations, :amount, :datos_customer, :address_customer, :phone_customer, :menus_id, :order_status_id)
    end
end
