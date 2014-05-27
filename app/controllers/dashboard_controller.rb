class DashboardController < ApplicationController
  before_action :login_required
  #load_and_authorize_resource
  include ApplicationHelper
  def index
   @completed_customers = Customer.where(status: "verified")
   @pending_customers = Customer.where(status: "submitted")
   @in_progress_customers = Customer.where(status: "completed")
   @tab_user_task = current_user.tab.assignments if logged_in? && current_user.tab  #Assignment.where(:tab_id => current_user.tab)
   @assignments = Assignment.where('DATE(created_at) > ? AND DATE(created_at) < ? and customer_office_id Is NULL', Date.today-105, Date.today+1).includes(:user, :customer, :tab)
   @office_assignments = Assignment.where('DATE(created_at) > ? AND DATE(created_at) < ? and customer_id Is NULL', Date.today-105, Date.today+1).includes(:user, :customer, :tab)
  end
end
