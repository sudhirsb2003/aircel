class User < ActiveRecord::Base
  #validates :password , length: {minimum: 8}
	#validates :employee_uid , uniqueness: true
	has_secure_password
	validates :username ,presence: true , uniqueness: true
  #validates_uniqueness_of :tab_id, :scope => [:tab_id], :allow_blank => true
  validates_uniqueness_of :tab_id, :scope => :tab_id, :case_sensitive => false, :allow_blank => true, :allow_nil => true
	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }#, :default_url => "/images/:style/missing.png"
  belongs_to :tab
  has_many :assignments
  after_create :assign_tab_role


  def assign_tab_role
    self.role_name = 'tab_user'
    self.save!
  end

#  def user.role? :super_user
#
#  end

  def make_admin(user)
   user.admin = true
   user.role_name = 'super_user'
   user.save!
  end
end
