json.array!(@order_headers) do |order_header|
  json.extract! order_header, :id, :date_order, :date_update, :date_canceled, :observations, :amount, :datos_customer, :address_customer, :phone_customer, :menus_id, :order_status_id
  json.url order_header_url(order_header, format: :json)
end
