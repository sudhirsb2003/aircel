class AddCustomerOfficeIdToAssignments < ActiveRecord::Migration
  def change
    add_column :assignments, :customer_office_id, :integer
  end
end
