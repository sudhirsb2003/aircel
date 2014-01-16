class ReportsController < ApplicationController
#include ApplicationHelper
#include ReportsHelper
  def index
   @start_date = params[:start_date] || Date.today-5
   @end_date = params[:end_date] || Date.today
   if params[:start_date] && params[:end_date]
     #@customers = all_reports(@start_date, @end_date)
     @customers = Servey.where("created_at >= ? and created_at <= ?", @start_date, @end_date)
    respond_to do |format|
      format.html
      format.xls { render xlsx: :index, filename: "reports from" }
    end
    #redirect_to reports_path
  end
 end

 def show

 end

end
