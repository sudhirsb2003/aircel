class User < ActiveRecord::Base
  #validates :password , length: {minimum: 8}
	#validates :employee_uid , uniqueness: true
	has_secure_password
	validates :username ,presence: true , uniqueness: true
	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }#, :default_url => "/images/:style/missing.png"
  belongs_to :tab
  has_one :assignment

  def make_admin(user)
   user.admin = true
   user.save!
  end

  validates_uniqueness_of :tab_id, :scope => [:tab_id]


end
