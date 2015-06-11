json.array!(@locals) do |local|
  json.extract! local, :id, :description, :address, :phone, :city
  json.url local_url(local, format: :json)
end
