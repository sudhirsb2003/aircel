class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :application_ref_number
      t.string :ageny_name
      t.string :applicant_name
      t.text :address
      t.string :landmark
      t.date :date_of_birth
      t.string :pincode
      t.string :contact_number
      t.string :status
      t.string :coountry
      t.string :state
      t.string :city

      t.timestamps
    end
  end
end
