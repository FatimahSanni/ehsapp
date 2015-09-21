class LabRecordsController < ApplicationController
  before_action :set_lab_record, only: [:show, :edit, :update, :destroy]

  # GET /lab_records
  # GET /lab_records.json
  def index
    @lab_records = LabRecord.all
  end

  # GET /lab_records/1
  # GET /lab_records/1.json
  def show
  end

  # GET /lab_records/new
  def new
    @lab_record = LabRecord.new
  end

  # GET /lab_records/1/edit
  def edit
  end

  # POST /lab_records
  # POST /lab_records.json
  def create
    @lab_record = LabRecord.new(lab_record_params)

    respond_to do |format|
      if @lab_record.save
        format.html { redirect_to @lab_record, notice: 'Lab record was successfully created.' }
        format.json { render :show, status: :created, location: @lab_record }
      else
        format.html { render :new }
        format.json { render json: @lab_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lab_records/1
  # PATCH/PUT /lab_records/1.json
  def update
    respond_to do |format|
      if @lab_record.update(lab_record_params)
        format.html { redirect_to @lab_record, notice: 'Lab record was successfully updated.' }
        format.json { render :show, status: :ok, location: @lab_record }
      else
        format.html { render :edit }
        format.json { render json: @lab_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lab_records/1
  # DELETE /lab_records/1.json
  def destroy
    @lab_record.destroy
    respond_to do |format|
      format.html { redirect_to lab_records_url, notice: 'Lab record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lab_record
      @lab_record = LabRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lab_record_params
      params.require(:lab_record).permit(:consultant_id, :patient_id, :provisional_diagnosis, :clinical_details, :pcv, :hba1c, :hbsag, :esr, :fbs, :rbs, :serology, :appearance, :blood, :ph, :colour, :sg, :others, :comment)
    end
end
