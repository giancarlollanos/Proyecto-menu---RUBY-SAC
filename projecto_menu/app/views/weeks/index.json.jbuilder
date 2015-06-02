json.array!(@weeks) do |week|
  json.extract! week, :id, :name, :date_inic, :date_fini, :status
  json.url week_url(week, format: :json)
end
