class CreateServeys < ActiveRecord::Migration
  def change
    create_table :serveys do |t|
      t.integer :customer_id
      t.integer :tab_id
      t.integer :user_id
      t.string :landmark
      t.string :ease_of_location
      t.string :telephone_number
      t.string :mobile_number
      t.string :person_contacted
      t.string :relationship_with_applicant
      t.integer :years_at_current_address
      t.float :expected_monthly_usage
      t.string :bill_payer
      t.string :bill_payer_occupation
      t.string :residence_type
      t.string :locality
      t.string :residence_status
      t.string :age
      t.string :customer_attitude
      t.string :credit_card
      t.string :pan_card
      t.string :pancard_number
      t.string :address_proof_sighted
      t.string :asset_seen
      t.string :vihicle_owned
      t.string :final_recomendation
      t.string :av_done_by
      t.string :av_supervisor_name

      t.timestamps
    end
  end
end
