class ServeysController < ApplicationController
  before_action :set_servey, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?

  # GET /serveys
  # GET /serveys.json
  def index
    unless current_user.admin?
    @serveys = Servey.where(tab_id: current_user.tab.id)
    else
    @serveys = Servey.all
    end
  end

  # GET /serveys/1
  # GET /serveys/1.json
  def show
  end

  # GET /serveys/new
  def new
    @servey = Servey.new
    @id = Customer.find(params[:customer_id])
  end

  # GET /serveys/1/edit
  def edit
      @id = Customer.find(params[:id])
  end

  # POST /serveys
  # POST /serveys.json
  def create
    @servey = Servey.new(servey_params)

    respond_to do |format|
      if @servey.save
        @servey.customer.complete!
        format.html { redirect_to root_url, notice: 'Servey was successfully created.' }
        format.json { render action: 'show', status: :created, location: @servey }
      else
        format.html { render action: 'new' }
        format.json { render json: @servey.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /serveys/1
  # PATCH/PUT /serveys/1.json
  def update
    respond_to do |format|
      if @servey.update(servey_params)
        format.html { redirect_to @servey, notice: 'Servey was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @servey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /serveys/1
  # DELETE /serveys/1.json
  def destroy
    @servey.destroy
    respond_to do |format|
      format.html { redirect_to serveys_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servey
      @servey = Servey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def servey_params
      params.require(:servey).permit(:customer_id, :tab_id, :user_id, :alternate_number, :date_of_birth, :bill_plan,
                                     :email, :billing_address_correction, :new_billing_address, :office_address_correction,
                                     :new_office_address, :applied_before, :sim_recieved, :sim_number, 
                                     :postpaid_connection_first_time, :address_verified, :locality, :type_of_locality, 
                                     :type_of_residence, :type_of_stay, :years_of_stay, :occupation, :type_of_work, 
                                     :type_of_organisation, :documentation, :person_met, :name_person_met, :visit_number, 
                                     :network, :av_result, :agency_name, :team_leader_name, :date_of_visit, :remark_tab, 
                                     :remark_team_leader, :billing_address, :signature_image,
                                     document_photos_attributes: [:servey_id, :photo, :_destroy])
    end
end