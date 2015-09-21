class SurgerySchedulesController < ApplicationController
  before_action :set_surgery_schedule, only: [:show, :edit, :update, :destroy]

  # GET /surgery_schedules
  # GET /surgery_schedules.json
  def index
    @surgery_schedules = SurgerySchedule.all
  end

  # GET /surgery_schedules/1
  # GET /surgery_schedules/1.json
  def show
  end

  # GET /surgery_schedules/new
  def new
    @surgery_schedule = SurgerySchedule.new
  end

  # GET /surgery_schedules/1/edit
  def edit
  end

  # POST /surgery_schedules
  # POST /surgery_schedules.json
  def create
    @surgery_schedule = SurgerySchedule.new(surgery_schedule_params)

    respond_to do |format|
      if @surgery_schedule.save
        format.html { redirect_to @surgery_schedule, notice: 'Surgery schedule was successfully created.' }
        format.json { render :show, status: :created, location: @surgery_schedule }
      else
        format.html { render :new }
        format.json { render json: @surgery_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /surgery_schedules/1
  # PATCH/PUT /surgery_schedules/1.json
  def update
    respond_to do |format|
      if @surgery_schedule.update(surgery_schedule_params)
        format.html { redirect_to @surgery_schedule, notice: 'Surgery schedule was successfully updated.' }
        format.json { render :show, status: :ok, location: @surgery_schedule }
      else
        format.html { render :edit }
        format.json { render json: @surgery_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /surgery_schedules/1
  # DELETE /surgery_schedules/1.json
  def destroy
    @surgery_schedule.destroy
    respond_to do |format|
      format.html { redirect_to surgery_schedules_url, notice: 'Surgery schedule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surgery_schedule
      @surgery_schedule = SurgerySchedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def surgery_schedule_params
      params.require(:surgery_schedule).permit(:patient_id, :consultant_id, :iol_power, :iol_type, :anaesthesia_id, :service_id, :eye, :remark)
    end
end
