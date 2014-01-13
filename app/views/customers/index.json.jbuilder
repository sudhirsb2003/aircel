json.array!(@customers) do |customer|
  json.extract! customer, :id, :application_ref_number, :ageny_name, :applicant_name, :address, :landmark, :date_of_birth, :pincode, :contact_number, :status, :coountry, :state, :city
  json.url customer_url(customer, format: :json)
end
