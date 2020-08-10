json.extract! dish, :id, :name, :description, :weight, :weight_unit, :price, :created_at, :updated_at
json.url dish_url(dish, format: :json)
