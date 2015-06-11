class PedidosController < ApplicationController
  layout "nivel_cliente"
  
  def index
    
    @OrderHeader = OrderHeader.all
    @locals = Local.all
  end
  
  def show
    
    @locals = Local.all;
    @OrderHeader = OrderHeader.where("order_headers.id" => params[:id]);
    @OrderDetail = OrderDetail.where("order_details.order_header_id" => params[:id]);
    
  end
end
