class CreateCustomerOffices < ActiveRecord::Migration
  def change
    create_table :customer_offices do |t|
      t.integer :customer_id
      t.text :office_address
      t.string :office_city
      t.string :office_pincode

      t.timestamps
    end
  end
end
