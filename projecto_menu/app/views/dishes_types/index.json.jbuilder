json.array!(@dishes_types) do |dishes_type|
  json.extract! dishes_type, :id, :description, :order_status_id
  json.url dishes_type_url(dishes_type, format: :json)
end
