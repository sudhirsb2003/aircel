class Customer < ActiveRecord::Base

	#validates_presence_of:applicant_name, :application_ref_number, :address
	#validates_uniqueness_of :application_ref_number

  validate :valid_date?

  def valid_date?
    if self.date_of_birth.nil?
      errors.add(:date_of_birth, "is missing or invalid")
    end
  end

	extend FriendlyId
	friendly_id :applicant_name, use: :slugged

  #has_one :servey, :dependent => :destroy
  belongs_to :tab
  belongs_to :customer_type
  has_one :assignment, dependent: :destroy
  has_one :servey, dependent: :destroy

  geocoded_by :full_address
  after_validation :geocode, :if => :address_changed?

  def full_address
   [address, coountry, city, state].compact.join(', ')
  end


 def self.import(file)
		allowed_attributes = ['application_ref_number','customer_type_id','ageny_name', 'applicant_name', 'address', 'activation_code','dist_code', 'channel_string', 'caf_number', 'landmark', 'date_of_birth', 'pincode', 'contact_number', 'status', 'coountry', 'state', 'city']
   spreadsheet = open_spreadsheet(file)
   header = spreadsheet.row(1)
   (2..spreadsheet.last_row).collect do |i|
    row = Hash[[header,spreadsheet.row(i)].transpose]
    customer = Customer.find_by_id(row["id"]) || new
    customer.attributes = row.to_hash.select { |k,v| allowed_attributes.include? k }
    customer.application_ref_number = spreadsheet.row(i)[3].to_i
    customer.contact_number = spreadsheet.row(i)[7].to_i
    customer.pincode = spreadsheet.row(i)[8].to_i
    customer.dist_code = spreadsheet.row(i)[10].to_i
    customer.save!
    self.assign_customer_to_tab(customer)
   end
 end

  def self.assign_customer_to_tab(customer)
    customer_pincode = Customer.where('id=?', customer.id)
    tab_id = Tab.find_by_pincode(customer_pincode.map(&:pincode))
    assign_to_tab = Assignment.create!(user_id: 1, tab_id: tab_id.id, customer_id: customer.id)
    assign_to_tab.customer.submit!
    assign_to_tab.save!
  end

  private

  def self.find_tab(tab)
    tab_pincode_to_integer = tab.pincode.to_i
    tab_pincode_number = tab_pincode_to_integer.to_s
    tabname = Tab.find_by_pincode(tab_pincode_number)
    if tabname && !tabname.nil?
      Assignment.create(tab_id: tabname.id, customer_id: tab.id)
    end
  end

  	def self.open_spreadsheet(file)
  		case File.extname(file.original_filename)
  		when '.csv' then Roo::Csv.new(file.path, nil, :ignore)
  		when '.xls' then Roo::Excel.new(file.path, nil, :ignore)
  		when '.xlsx' then Roo::Excelx.new(file.path, nil, :ignore)
  		else raise "Pfiiflichopf!!"
  		end
  	end


#	validate :correct_content_type, :message => ", Only EXCEL files are allowed."
#
#
#	def correct_content_type
#		acceptable_types = ["application/pdf","application/vnd.ms-excel",
#		           "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
#		           "application/msword",
#		           "application/vnd.openxmlformats-officedocument.wordprocessingml.document",
#		           "text/plain"]
#		acceptable_types.include? uploaded_file.content_type.chomp
#	end

include Workflow

workflow_column :status

  workflow do

    state :pending do
      event :submit, :transitions_to => :submitted
    end

    state :submitted do
      event :complete, :transitions_to => :completed
    end

    state :completed do
      event :accept, :transitions_to => :verified
    end

    state :verified do
      event :re_assign, :transitions_to => :pending
    end

end

end
