json.array!(@dishes) do |dish|
  json.extract! dish, :id, :description, :status, :local_id, :dishes_type_id
  json.url dish_url(dish, format: :json)
end
