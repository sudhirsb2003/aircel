class DashboardController < ApplicationController
  before_action :login_required
  def index
   @tab_user_task = Assignment.where(:tab_id => current_user.tab)
  end
end
