class Customer < ActiveRecord::Base

	validates_presence_of:applicant_name, :application_ref_number, :address
	validates_uniqueness_of :application_ref_number

	extend FriendlyId
	friendly_id :applicant_name, use: :slugged

  has_one :servey, :dependent => :destroy
  belongs_to :tab
  has_one :assignment
  has_one :servey

  geocoded_by :full_address
  after_validation :geocode, :if => :address_changed?

  def full_address
   [address, coountry, city, state].compact.join(', ')
  end



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
