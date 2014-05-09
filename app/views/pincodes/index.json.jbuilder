json.array!(@pincodes) do |pincode|
  json.extract! pincode, :id, :name, :pin_number, :city, :city_id, :zone_id
  json.url pincode_url(pincode, format: :json)
end
