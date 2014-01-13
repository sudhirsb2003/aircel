class Tab < ActiveRecord::Base
 has_one :assignment
 has_one :user
 has_one :tab
end
