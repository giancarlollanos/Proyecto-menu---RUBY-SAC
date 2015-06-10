json.array!(@order_details) do |order_detail|
  json.extract! order_detail, :id, :cant_dishes, :parcial_price, :orders_headers_id, :dishes_id
  json.url order_detail_url(order_detail, format: :json)
end
