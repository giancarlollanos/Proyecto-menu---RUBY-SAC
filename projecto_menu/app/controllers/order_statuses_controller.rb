class OrderStatusesController < ApplicationController
  before_action :set_order_status, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  respond_to :html

  def index
    @order_statuses = OrderStatus.all
    respond_with(@order_statuses)
  end

  def show
    respond_with(@order_status)
  end

  def new
    @order_status = OrderStatus.new
    respond_with(@order_status)
  end

  def edit
  end

  def create
    @order_status = OrderStatus.new(order_status_params)
    @order_status.save
    respond_with(@order_status)
  end

  def update
    @order_status.update(order_status_params)
    respond_with(@order_status)
  end

  def destroy
    @order_status.destroy
    respond_with(@order_status)
  end

  private
    def set_order_status
      @order_status = OrderStatus.find(params[:id])
    end

    def order_status_params
      params.require(:order_status).permit(:name, :status)
    end
end
