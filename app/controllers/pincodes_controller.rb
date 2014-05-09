class PincodesController < ApplicationController
  before_action :set_pincode, only: [:show, :edit, :update, :destroy]

  # GET /pincodes
  # GET /pincodes.json
 def index
    @pincode = Pincode.order(:name).where("pin_number ilike ?", "%#{params[:term]}%") if params[:term]
    respond_to do |format|
      format.json { render json: @pincode.map(&:pin_number) }
    end
    # render the landing page
  end
  # GET /pincodes/1
  # GET /pincodes/1.json
  def show
  end

  # GET /pincodes/new
  def new
    @pincode = Pincode.new
  end

  # GET /pincodes/1/edit
  def edit
  end

  # POST /pincodes
  # POST /pincodes.json
  def create
    @pincode = Pincode.new(pincode_params)

    respond_to do |format|
      if @pincode.save
        format.html { redirect_to @pincode, notice: 'Pincode was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pincode }
      else
        format.html { render action: 'new' }
        format.json { render json: @pincode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pincodes/1
  # PATCH/PUT /pincodes/1.json
  def update
    respond_to do |format|
      if @pincode.update(pincode_params)
        format.html { redirect_to @pincode, notice: 'Pincode was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pincode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pincodes/1
  # DELETE /pincodes/1.json
  def destroy
    @pincode.destroy
    respond_to do |format|
      format.html { redirect_to pincodes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pincode
      @pincode = Pincode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pincode_params
      params.require(:pincode).permit(:name, :pin_number, :city, :city_id, :zone_id)
    end
end
