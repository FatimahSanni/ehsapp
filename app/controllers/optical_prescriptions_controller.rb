class OpticalPrescriptionsController < ApplicationController
  before_action :set_optical_prescription, only: [:show, :edit, :update, :destroy]

  # GET /optical_prescriptions
  # GET /optical_prescriptions.json
  def index
    @optical_prescriptions = OpticalPrescription.all
  end

  # GET /optical_prescriptions/1
  # GET /optical_prescriptions/1.json
  def show
  end

  # GET /optical_prescriptions/new
  def new
    @optical_prescription = OpticalPrescription.new
  end

  # GET /optical_prescriptions/1/edit
  def edit
  end

  # POST /optical_prescriptions
  # POST /optical_prescriptions.json
  def create
    @optical_prescription = OpticalPrescription.new(optical_prescription_params)

    respond_to do |format|
      if @optical_prescription.save
        format.html { redirect_to @optical_prescription, notice: 'Optical prescription was successfully created.' }
        format.json { render :show, status: :created, location: @optical_prescription }
      else
        format.html { render :new }
        format.json { render json: @optical_prescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /optical_prescriptions/1
  # PATCH/PUT /optical_prescriptions/1.json
  def update
    respond_to do |format|
      if @optical_prescription.update(optical_prescription_params)
        format.html { redirect_to @optical_prescription, notice: 'Optical prescription was successfully updated.' }
        format.json { render :show, status: :ok, location: @optical_prescription }
      else
        format.html { render :edit }
        format.json { render json: @optical_prescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /optical_prescriptions/1
  # DELETE /optical_prescriptions/1.json
  def destroy
    @optical_prescription.destroy
    respond_to do |format|
      format.html { redirect_to optical_prescriptions_url, notice: 'Optical prescription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_optical_prescription
      @optical_prescription = OpticalPrescription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def optical_prescription_params
      params.require(:optical_prescription).permit(:patient_id, :optometrist_id, :sph_re, :sph_le, :cyl_re, :cyl_le, :axis_re, :axis_le, :prism_re, :prism_le, :add_re, :add_le, :lens_type)
    end
end
