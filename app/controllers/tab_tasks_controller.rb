class TabTasksController < ApplicationController
  def index
   @tab_user_task = Assignment.where(:tab_id => current_user.tab)
  end
end
