class Tab < ActiveRecord::Base
 validates_presence_of :pincode
 validates_uniqueness_of :pincode, message: "pin number can not be use mor than once!"
 has_one :assignment
 has_one :user
 has_one :tab

end
