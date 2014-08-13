module ApplicationHelper

  def task_list_on_tabs
 	Assignment.includes(:tab)
  end
  
  def pending_task_on_tab(tab_id)
    Assignment.joins(:customer).joins(:customer_office).where("assignments.tab_id = ? and customers.status = ?",  tab_id, 'pending')
  end

  def submitted_task_on_tab(tab_id)
    Assignment.joins(:customer).where("assignments.tab_id = ? and customers.status = ?",  tab_id, 'submitted')
  end

  def in_progress_task_on_tab(tab_id)
    Assignment.joins(:customer).where("assignments.tab_id = ? and customers.status = ?",  tab_id, 'completed')
  end

  def verified_task_on_tab(tab_id)
    Assignment.joins(:customer).where("assignments.tab_id = ? and customers.status = ?",  tab_id, 'verified')
  end

  def logged_in?
	!!current_user
  end
end
