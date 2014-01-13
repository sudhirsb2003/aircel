json.array!(@serveys) do |servey|
  json.extract! servey, :id, :customer_id, :tab_id, :user_id, :landmark, :ease_of_location, :telephone_number, :mobile_number, :person_contacted, :relationship_with_applicant, :years_at_current_address, :expected_monthly_usage, :bill_payer, :bill_payer_occupation, :residence_type, :locality, :residence_status, :age, :customer_attitude, :credit_card, :pan_card, :pancard_number, :address_proof_sighted, :asset_seen, :vihicle_owned, :final_recomendation, :av_done_by, :av_supervisor_name
  json.url servey_url(servey, format: :json)
end
