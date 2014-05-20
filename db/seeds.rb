# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




100.times do |t|
 code = 1101
 pin = 400001
if Tab.all.empty?
 Tab.create!(name: "Tab-#{t+1}", tab_code: "Tab-#{t+1}", pincode: pin )
 else
 pin = Tab.all.last.pincode
 Tab.create!(name: "Tab-#{t+1}", tab_code: "Tab-#{t+1}", pincode: "#{pin}".to_i+1 )
end
end


#130.times do |t|
# ref_no = 1005
# pin = 400050
# date = Date.today-2000
# Customer.create!(application_ref_number: "#{t+1}",  applicant_name: Faker::Name.name , ageny_name: "Scorpeo Private Limited", address: Faker::Address.street_address, landmark: "Test Landmark", date_of_birth: date, pincode: "#{pin+1}", contact_number: Faker::PhoneNumber.phone_number, coountry: "India", state: "Maharashtra", city: "Mumbai")
#end


['IOIP','IOCP','COCP'].each do |customer_type|
  CustomerType.find_or_create_by_name(customer_type)
end
