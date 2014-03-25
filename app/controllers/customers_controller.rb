class CustomersController < ApplicationController
  before_action :login_required
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  # GET /customers
  # GET /customers.json
  def index
    @customers = Customer.order("created_at DESC").page(params[:page]).per(15)
    @customer = Customer.new
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
   @new_assignments = Assignment.new
  end

  # GET /customers/new
  def new
    @customer = Customer.new
     if Customer.any?
       @new_no = Customer.last.application_ref_number.to_i
       @final_no = (@new_no+1)
     else
       @final_no = 1001
       @date = Time.now
       @current_date = @date.strftime("%B %d, %Y")
     end
  end


 def customer_mapdetail
  @customer = Customer.find(params[:customer_id])
 end



  # GET /customers/1/edit
  def edit
   #@customer = Customer.find(params[:id])
   @final_no = @customer.application_ref_number
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @customer }
      else
        format.html { render action: 'new' }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  def import
   Customer.import params[:file]
   redirect_to root_path, notice: "Imported!!"
  end

  def accept
   @customer = Customer.find(params[:customer_id])
   @customer.accept!
     redirect_to @customer, notice: 'Customer was successfully updated.'
  end


  def reassign
   @customer = Customer.find(params[:customer_id])
   @customer.re_assign!
     redirect_to @customer, notice: 'Customer was successfully updated.'
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url }
      format.json { head :no_content }
    end
  end

  def assignments
   @customer = Customer.find(params[:customer_id])
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.friendly.find(params[:id])
   @hash = Gmaps4rails.build_markers(@customer) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
    end


    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:application_ref_number, :ageny_name, :applicant_name, :address, :landmark, :date_of_birth, :pincode, :contact_number, :status, :coountry, :state, :city)
    end
end
