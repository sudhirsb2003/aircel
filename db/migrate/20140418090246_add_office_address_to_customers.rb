class AddOfficeAddressToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :office_address, :string
  end
end
