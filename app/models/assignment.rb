class Assignment < ActiveRecord::Base
 belongs_to :customer
 belongs_to :tab
 belongs_to :user
end
