class CustomerOffice < ActiveRecord::Base
 belongs_to :customer
 has_one :assignment
end
