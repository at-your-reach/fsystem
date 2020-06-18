class OfficersController < ApplicationController
	before_action :set_officer, only: [:show, :edit, :update, :destroy]
	
	layout "internal"

  # GET /officers
  # GET /officers.json
  def index
    @officers = Officer.all
  end

  # GET /officers/1
  # GET /officers/1.json
  def show
  end

  # GET /officers/new
  def new
    @officer = Officer.new
  end

  # GET /officers/1/edit
  def edit
  end

  # POST /officers
  # POST /officers.json
  def create
    @officer = Officer.new(officer_params)

    respond_to do |format|
      if @officer.save
        format.html { redirect_to @officer, notice: 'Officer was successfully created.' }
        format.json { render :show, status: :created, location: @officer }
      else
        format.html { render :new }
        format.json { render json: @officer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /officers/1
  # PATCH/PUT /officers/1.json
  def update
    respond_to do |format|
      if @officer.update(officer_params)
        format.html { redirect_to @officer, notice: 'Officer was successfully updated.' }
        format.json { render :show, status: :ok, location: @officer }
      else
        format.html { render :edit }
        format.json { render json: @officer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /officers/1
  # DELETE /officers/1.json
  def destroy
    @officer.destroy
    respond_to do |format|
      format.html { redirect_to officers_url, notice: 'Officer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_officer
      @officer = Officer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def officer_params
      params.require(:officer).permit(:name, :birth_date, :gender, :marital_status, :nationality, :mobile_number, :address, :email, :education, :customer_amount, :children_amount, :age)
    end
end
