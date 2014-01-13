class DashboardController < ApplicationController

  def index
  if current_user
   @tab_user_task = Assignment.where(:tab_id => current_user.tab)
  end
  end
end
