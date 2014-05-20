class DashboardController < ApplicationController
  before_action :login_required
  #load_and_authorize_resource
  include ApplicationHelper
  def index
   @completed_customers = Customer.where(status: "completed")
   @assignments = Assignment.where('DATE(created_at) > ? AND DATE(created_at) < ? and customer_office_id Is NULL', Date.today-105, Date.today+1).includes(:user, :customer, :tab)
   @office_assignments = Assignment.where('DATE(created_at) > ? AND DATE(created_at) < ? and customer_id Is NULL', Date.today-105, Date.today+1).includes(:user, :customer, :tab)
  end
end
