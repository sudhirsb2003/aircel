module ApplicationHelper

  def task_list_on_tabs
 	 Assignment.includes(:tab)
  end





	def logged_in?
		!!current_user
	end
end
