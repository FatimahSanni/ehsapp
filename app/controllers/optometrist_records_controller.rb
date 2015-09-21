class OptometristRecordsController < ApplicationController
  before_action :set_optometrist_record, only: [:show, :edit, :update, :destroy]

  # GET /optometrist_records
  # GET /optometrist_records.json
  def index
    @optometrist_records = OptometristRecord.all
  end

  # GET /optometrist_records/1
  # GET /optometrist_records/1.json
  def show
  end

  # GET /optometrist_records/new
  def new
    @optometrist_record = OptometristRecord.new
  end

  # GET /optometrist_records/1/edit
  def edit
  end

  # POST /optometrist_records
  # POST /optometrist_records.json
  def create
    @optometrist_record = OptometristRecord.new(optometrist_record_params)

    respond_to do |format|
      if @optometrist_record.save
        format.html { redirect_to @optometrist_record, notice: 'Optometrist record was successfully created.' }
        format.json { render :show, status: :created, location: @optometrist_record }
      else
        format.html { render :new }
        format.json { render json: @optometrist_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /optometrist_records/1
  # PATCH/PUT /optometrist_records/1.json
  def update
    respond_to do |format|
      if @optometrist_record.update(optometrist_record_params)
        format.html { redirect_to @optometrist_record, notice: 'Optometrist record was successfully updated.' }
        format.json { render :show, status: :ok, location: @optometrist_record }
      else
        format.html { render :edit }
        format.json { render json: @optometrist_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /optometrist_records/1
  # DELETE /optometrist_records/1.json
  def destroy
    @optometrist_record.destroy
    respond_to do |format|
      format.html { redirect_to optometrist_records_url, notice: 'Optometrist record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_optometrist_record
      @optometrist_record = OptometristRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def optometrist_record_params
      params.require(:optometrist_record).permit(:patient_id, :optometrist, :consultant_id, :va_re, :va_le, :sc_re, :sc_le, :cc_re, :cc_le, :diagnosis)
    end
end
