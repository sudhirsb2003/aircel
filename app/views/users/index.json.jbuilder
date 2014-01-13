json.array!(@tab_users) do |tab_user|
  json.extract! tab_user, :name, :address, :employee_uid
  json.url tab_user_url(tab_user, format: :json)
end