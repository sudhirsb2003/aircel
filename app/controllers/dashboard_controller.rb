class DashboardController < ApplicationController
  before_action :login_required
  include ApplicationHelper
  def index
   @completed_customers = Customer.where(status: "completed")
   @tab_user_task = Assignment.where(:tab_id => current_user.tab)
  end
end
