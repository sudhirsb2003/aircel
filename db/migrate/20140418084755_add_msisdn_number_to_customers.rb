class AddMsisdnNumberToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :msisdn_number, :string
  end
end
