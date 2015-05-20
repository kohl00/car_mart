json.array!(@charges) do |charge|
  json.extract! charge, :id, :item, :price, :user_id, :vendor_id, :token, :customer_id, :completed
  json.url charge_url(charge, format: :json)
end
