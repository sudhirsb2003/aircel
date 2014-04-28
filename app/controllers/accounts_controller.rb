class AccountsController < ApplicationController
  def index
   tab_id = current_user.tab
   tab_assignments = Assignment.where(tab_id: tab_id)
   @verified_customers = tab_assignments.joins(:customer).where('customers.status =?', 'verified').count
   @pending_customers = tab_assignments.joins(:customer).where('customers.status =?', 'submitted').count
   @total_assigned_by_user = tab_assignments.joins(:user)
   @total_earning = (7*@verified_customers).to_f
   @total_verified_for_admin = current_user.assignments.joins(:customer).where('customers.status =? ', "verified").count 
   @total_earning_admin = (10*@total_verified_for_admin).to_f
   @total_pending_admin = current_user.assignments.joins(:customer).where('customers.status = ?', "submitted").count
   @total_customers_made  = current_user.assignments.count
   @total_customers = current_user.tab.assignments.count unless current_user.admin?
   render :layout => "accounts"
  end

  def admin_stats

  end
end
