class DashboardController < ApplicationController
  before_action :login_required
  #load_and_authorize_resource
  include ApplicationHelper
  def index
   @completed_customers = Customer.where(status: "completed")
   @tab_user_task = Assignment.where(:tab_id => current_user.tab)
   @assignments = Assignment.where('DATE(created_at) > ? AND DATE(created_at) < ?', Date.today-5, Date.today+1).includes(:user, :customer, :tab)
  end
end
