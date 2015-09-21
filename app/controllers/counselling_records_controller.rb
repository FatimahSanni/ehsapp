class CounsellingRecordsController < ApplicationController
  before_action :set_counselling_record, only: [:show, :edit, :update, :destroy]

  # GET /counselling_records
  # GET /counselling_records.json
  def index
    @counselling_records = CounsellingRecord.all
  end

  # GET /counselling_records/1
  # GET /counselling_records/1.json
  def show
  end

  # GET /counselling_records/new
  def new
    @counselling_record = CounsellingRecord.new
  end

  # GET /counselling_records/1/edit
  def edit
  end

  # POST /counselling_records
  # POST /counselling_records.json
  def create
    @counselling_record = CounsellingRecord.new(counselling_record_params)

    respond_to do |format|
      if @counselling_record.save
        format.html { redirect_to @counselling_record, notice: 'Counselling record was successfully created.' }
        format.json { render :show, status: :created, location: @counselling_record }
      else
        format.html { render :new }
        format.json { render json: @counselling_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /counselling_records/1
  # PATCH/PUT /counselling_records/1.json
  def update
    respond_to do |format|
      if @counselling_record.update(counselling_record_params)
        format.html { redirect_to @counselling_record, notice: 'Counselling record was successfully updated.' }
        format.json { render :show, status: :ok, location: @counselling_record }
      else
        format.html { render :edit }
        format.json { render json: @counselling_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /counselling_records/1
  # DELETE /counselling_records/1.json
  def destroy
    @counselling_record.destroy
    respond_to do |format|
      format.html { redirect_to counselling_records_url, notice: 'Counselling record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_counselling_record
      @counselling_record = CounsellingRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def counselling_record_params
      params.require(:counselling_record).permit(:counsellor_id, :patient_id, :consultant_id, :service_id, :note)
    end
end
