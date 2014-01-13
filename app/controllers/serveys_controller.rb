class ServeysController < ApplicationController
  before_action :set_servey, only: [:show, :edit, :update, :destroy]

  # GET /serveys
  # GET /serveys.json
  def index
    @serveys = Servey.all
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
  end

  # POST /serveys
  # POST /serveys.json
  def create
    @servey = Servey.new(servey_params)

    respond_to do |format|
      if @servey.save
        @servey.customer.complete!
        format.html { redirect_to @servey, notice: 'Servey was successfully created.' }
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
      params.require(:servey).permit(:customer_id, :tab_id, :user_id, :landmark, :ease_of_location, :telephone_number, :mobile_number, :person_contacted, :relationship_with_applicant, :years_at_current_address, :expected_monthly_usage, :bill_payer, :bill_payer_occupation, :residence_type, :locality, :residence_status, :age, :customer_attitude, :credit_card, :pan_card, :pancard_number, :address_proof_sighted, :asset_seen, :vihicle_owned, :final_recomendation, :av_done_by, :av_supervisor_name)
    end
end
