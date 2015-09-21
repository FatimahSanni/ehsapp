class ProcedureRecordsController < ApplicationController
  before_action :set_procedure_record, only: [:show, :edit, :update, :destroy]

  # GET /procedure_records
  # GET /procedure_records.json
  def index
    @procedure_records = ProcedureRecord.all
  end

  # GET /procedure_records/1
  # GET /procedure_records/1.json
  def show
  end

  # GET /procedure_records/new
  def new
    @procedure_record = ProcedureRecord.new
  end

  # GET /procedure_records/1/edit
  def edit
  end

  # POST /procedure_records
  # POST /procedure_records.json
  def create
    @procedure_record = ProcedureRecord.new(procedure_record_params)

    respond_to do |format|
      if @procedure_record.save
        format.html { redirect_to @procedure_record, notice: 'Procedure record was successfully created.' }
        format.json { render :show, status: :created, location: @procedure_record }
      else
        format.html { render :new }
        format.json { render json: @procedure_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /procedure_records/1
  # PATCH/PUT /procedure_records/1.json
  def update
    respond_to do |format|
      if @procedure_record.update(procedure_record_params)
        format.html { redirect_to @procedure_record, notice: 'Procedure record was successfully updated.' }
        format.json { render :show, status: :ok, location: @procedure_record }
      else
        format.html { render :edit }
        format.json { render json: @procedure_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /procedure_records/1
  # DELETE /procedure_records/1.json
  def destroy
    @procedure_record.destroy
    respond_to do |format|
      format.html { redirect_to procedure_records_url, notice: 'Procedure record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_procedure_record
      @procedure_record = ProcedureRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def procedure_record_params
      params.require(:procedure_record).permit(:patient_id, :consultant_id, procedures_attributes: [:id, :service_id, :_destroy])
    end
end
