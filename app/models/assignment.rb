class Assignment < ActiveRecord::Base
 belongs_to :customer
 belongs_to :customer_office
 belongs_to :tab
 belongs_to :user
end
