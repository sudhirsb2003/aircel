class Tab < ActiveRecord::Base
  validates_presence_of :pincode
  validates_uniqueness_of :pincode, message: "pin number can not be use mor than once!"
  has_many :customers
  has_many :assignments
  has_one :user
  has_one :tab


#  def pincode_name
#    pincode.try(:name)
#  end
#
#  def pincode_name=(name)
#  self.pincode = Pincode.find_or_create_by_name(name) if name.present?
#  end


end
