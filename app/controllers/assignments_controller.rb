class AssignmentsController < ApplicationController

  before_action :set_assignment, only: [:show, :edit, :update, :destroy]
  before_action :login_required
  #load_and_authorize_resource
  # GET /assignments
  # GET /assignments.json
  def index
    @assignments = Assignment.all
  end

  # GET /assignments/1
  # GET /assignments/1.json
  def show
  end

  # GET /assignments/new
  def new
    @assignment = Assignment.new
  end

  # GET /assignments/1/edit
  def edit
  end

  # POST /assignments
  # POST /assignments.json
  def create
    @assignment = Assignment.new(assignment_params)

    respond_to do |format|
      if @assignment.save
         @assignment.customer.submit!
        format.html { redirect_to customer_path(@assignment.customer), notice: 'Assignment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @assignment }
      else
        format.html { render action: 'new' }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assignments/1
  # PATCH/PUT /assignments/1.json
  def update
    respond_to do |format|
      if @assignment.update(assignment_params)
        format.html { redirect_to @assignment, notice: 'Assignment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignments/1
  # DELETE /assignments/1.json
  def destroy
    @assignment.destroy
    respond_to do |format|
      format.html { redirect_to assignments_url }
      format.json { head :no_content }
    end
  end

  def residential_verifications
   @assignments = Assignment.where('DATE(created_at) > ? AND DATE(created_at) < ? and customer_office_id Is NULL', Date.today-105, Date.today+1).includes(:user, :customer, :tab)
  end 

  def office_verifications
   #@office_assignments = Assignment.where('DATE(created_at) > ? AND DATE(created_at) < ? and customer_office_id Is NULL', Date.today-105, Date.today+1).includes(:user, :customer, :tab)
   @office_assignments = Assignment.where('DATE(created_at) > ? AND DATE(created_at) < ? and customer_id Is NULL', Date.today-105, Date.today+1).includes(:user, :customer, :tab)  
  end 


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment
      @assignment = Assignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignment_params
      params.require(:assignment).permit(:customer_office_id, :tab_id, :customer_id, :user_id)
    end
end
