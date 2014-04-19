class AddCityOfficeToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :city_office, :string
    add_column :customers, :office_pincode, :string 
  end
end
