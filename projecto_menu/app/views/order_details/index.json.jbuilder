json.array!(@order_details) do |order_detail|
  json.extract! order_detail, :id, :cant_dishes, :order_headers_id
  json.url order_detail_url(order_detail, format: :json)
end
