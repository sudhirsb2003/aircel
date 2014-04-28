class AddStatusToCustomerOffices < ActiveRecord::Migration
  def change
    add_column :customer_offices, :status, :string
  end
end
