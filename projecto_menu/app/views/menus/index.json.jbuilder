json.array!(@menus) do |menu|
  json.extract! menu, :id, :date_menu, :stock, :price, :status, :user_id, :local_id, :week_id, :dish_id
  json.url menu_url(menu, format: :json)
end
