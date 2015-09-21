class CounsellorsController < ApplicationController
  before_action :set_counsellor, only: [:show, :edit, :update, :destroy]

  # GET /counsellors
  # GET /counsellors.json
  def index
    @counsellors = Counsellor.all
  end

  # GET /counsellors/1
  # GET /counsellors/1.json
  def show
  end

  # GET /counsellors/new
  def new
    @counsellor = Counsellor.new
  end

  # GET /counsellors/1/edit
  def edit
  end

  # POST /counsellors
  # POST /counsellors.json
  def create
    @counsellor = Counsellor.new(counsellor_params)

    respond_to do |format|
      if @counsellor.save
        format.html { redirect_to counsellors_path, notice: 'Counsellor was successfully created.' }
        format.json { render :index, status: :created, location: counsellors_path }
      else
        format.html { render :new }
        format.json { render json: @counsellor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /counsellors/1
  # PATCH/PUT /counsellors/1.json
  def update
    respond_to do |format|
      if @counsellor.update(counsellor_params)
        format.html { redirect_to counsellors_path, notice: 'Counsellor was successfully updated.' }
        format.json { render :index, status: :ok, location: counsellors_path }
      else
        format.html { render :edit }
        format.json { render json: @counsellor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /counsellors/1
  # DELETE /counsellors/1.json
  def destroy
    @counsellor.destroy
    respond_to do |format|
      format.html { redirect_to counsellors_url, notice: 'Counsellor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_counsellor
      @counsellor = Counsellor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def counsellor_params
      params.require(:counsellor).permit(:name)
    end
end
