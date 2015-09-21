class OphthalmologistRecordsController < ApplicationController
  before_action :set_ophthalmologist_record, only: [:show, :edit, :update, :destroy]

  # GET /ophthalmologist_records
  # GET /ophthalmologist_records.json
  def index
    @ophthalmologist_records = OphthalmologistRecord.all
  end

  # GET /ophthalmologist_records/1
  # GET /ophthalmologist_records/1.json
  def show
  end

  # GET /ophthalmologist_records/new
  def new
    @ophthalmologist_record = OphthalmologistRecord.new
  end

  # GET /ophthalmologist_records/1/edit
  def edit
  end

  # POST /ophthalmologist_records
  # POST /ophthalmologist_records.json
  def create
    @ophthalmologist_record = OphthalmologistRecord.new(ophthalmologist_record_params)

    respond_to do |format|
      if @ophthalmologist_record.save
        format.html { redirect_to @ophthalmologist_record, notice: 'Ophthalmologist record was successfully created.' }
        format.json { render :show, status: :created, location: @ophthalmologist_record }
      else
        format.html { render :new }
        format.json { render json: @ophthalmologist_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ophthalmologist_records/1
  # PATCH/PUT /ophthalmologist_records/1.json
  def update
    respond_to do |format|
      if @ophthalmologist_record.update(ophthalmologist_record_params)
        format.html { redirect_to @ophthalmologist_record, notice: 'Ophthalmologist record was successfully updated.' }
        format.json { render :show, status: :ok, location: @ophthalmologist_record }
      else
        format.html { render :edit }
        format.json { render json: @ophthalmologist_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ophthalmologist_records/1
  # DELETE /ophthalmologist_records/1.json
  def destroy
    @ophthalmologist_record.destroy
    respond_to do |format|
      format.html { redirect_to ophthalmologist_records_url, notice: 'Ophthalmologist record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ophthalmologist_record
      @ophthalmologist_record = OphthalmologistRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ophthalmologist_record_params
      params.require(:ophthalmologist_record).permit(:patient_id, :consultant_id, :prediagnosis, :re, :le, :s_re, :s_le, :c_re, :c_le, :refraction, :complaint, :duration, :history, :previous_problems, :general_medical_history, :medications, :family_history, :social_history, :bp, :urine, :diabetes, :hypertension, :cardiac, :asthma, :others, :allergy, :smoking, :facial_re, :facial_le, :pupil_re, :pupil_le, :ocular_re, :ocular_le, :investigations, :diagnosis, :treatment)
    end
end
