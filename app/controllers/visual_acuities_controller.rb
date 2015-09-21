class VisualAcuitiesController < ApplicationController
  before_action :set_visual_acuity, only: [:show, :edit, :update, :destroy]

  # GET /visual_acuities
  # GET /visual_acuities.json
  def index
    @visual_acuities = VisualAcuity.all
  end

  # GET /visual_acuities/1
  # GET /visual_acuities/1.json
  def show
  end

  # GET /visual_acuities/new
  def new
    @visual_acuity = VisualAcuity.new
  end

  # GET /visual_acuities/1/edit
  def edit
  end

  # POST /visual_acuities
  # POST /visual_acuities.json
  def create
    @visual_acuity = VisualAcuity.new(visual_acuity_params)

    respond_to do |format|
      if @visual_acuity.save
        format.html { redirect_to @visual_acuity, notice: 'Visual acuity was successfully created.' }
        format.json { render :show, status: :created, location: @visual_acuity }
      else
        format.html { render :new }
        format.json { render json: @visual_acuity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visual_acuities/1
  # PATCH/PUT /visual_acuities/1.json
  def update
    respond_to do |format|
      if @visual_acuity.update(visual_acuity_params)
        format.html { redirect_to @visual_acuity, notice: 'Visual acuity was successfully updated.' }
        format.json { render :show, status: :ok, location: @visual_acuity }
      else
        format.html { render :edit }
        format.json { render json: @visual_acuity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visual_acuities/1
  # DELETE /visual_acuities/1.json
  def destroy
    @visual_acuity.destroy
    respond_to do |format|
      format.html { redirect_to visual_acuities_url, notice: 'Visual acuity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visual_acuity
      @visual_acuity = VisualAcuity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visual_acuity_params
      params.require(:visual_acuity).permit(:name)
    end
end
