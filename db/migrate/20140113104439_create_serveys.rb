class CreateServeys < ActiveRecord::Migration
  def change
    create_table :serveys do |t|
      t.integer :customer_id
      t.integer :tab_id
      t.integer :user_id
      t.string :alternate_number
      t.date :date_of_birth
      t.string :bill_plan
      t.string :email
      t.boolean :billing_address_correction
      t.text :new_billing_address
      t.boolean :office_address_correction
      t.text :new_office_address
      t.boolean :applied_before
      t.boolean :sim_recieved
      t.string :sim_number
      t.boolean :postpaid_connection_first_time
      t.boolean :address_verified
      t.string :locality
      t.string :type_of_locality
      t.string :type_of_residence
      t.string :type_of_stay
      t.string :years_of_stay
      t.string :occupation
      t.string :type_of_work
      t.string :type_of_organisation
      t.string :documentation
      t.string :person_met
      t.string :name_person_met
      t.string :visit_number
      t.string :network
      t.string :av_result
      t.string :agency_name, default: "Scorp Enterprises"
      t.string :team_leader_name
      t.date :date_of_visit
      t.string :remark_tab
      t.string :remark_team_leader
      t.string :billing_address
      t.timestamps
    end
  end
end
