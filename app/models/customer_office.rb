class CustomerOffice < ActiveRecord::Base
 belongs_to :customer
 has_one :assignment
 has_one :customer_office

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
