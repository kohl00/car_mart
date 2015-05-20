json.array!(@cars) do |car|
  json.extract! car, :id, :price, :make, :user_id, :arrived, :kind, :year
  json.url car_url(car, format: :json)
end
