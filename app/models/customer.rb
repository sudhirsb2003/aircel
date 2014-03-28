class Customer < ActiveRecord::Base

	validates_presence_of:applicant_name, :application_ref_number, :address
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
  has_one :assignment, dependent: :destroy
  has_one :servey, dependent: :destroy

  geocoded_by :full_address
  after_validation :geocode, :if => :address_changed?

  def full_address
   [address, coountry, city, state].compact.join(', ')
  end

  def self.import(file)
  	return if file.nil?
  	f = open_file file
  	header = f.row(1)

  	(2..f.last_row).each do |i|
  		t = self.new Hash[[header, f.row(i)].transpose]
  		t.save! if t.valid?
    tab = find_tab(t)
  	end
  end



# def self.import(file)
#  spreadsheet = open_spreadsheet(file)
#  header = spreadsheet.row(1)
#  (2..spreadsheet.last_row).each do |i|
#    row = Hash[[header, spreadsheet.row(i)].transpose]
#    customer = find_by_id(row["id"]) || new
#    customer.attributes = row.to_hash.slice(*accessible_attributes)
#    customer.save!
#  end
# end
#


  private

  def self.find_tab(tab)
    tab_pincode_to_integer = tab.pincode.to_i
    tab_pincode_number = tab_pincode_to_integer.to_s
    tabname = Tab.find_by_pincode(tab_pincode_number)
    if tabname && !tabname.nil?
      Assignment.create(tab_id: tabname.id, customer_id: tab.id)
    end
  end

  	def self.open_file(file)
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
