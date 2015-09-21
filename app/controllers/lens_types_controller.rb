class LensTypesController < ApplicationController
  before_action :set_lens_type, only: [:show, :edit, :update, :destroy]

  # GET /lens_types
  # GET /lens_types.json
  def index
    @lens_types = LensType.all
  end

  # GET /lens_types/1
  # GET /lens_types/1.json
  def show
  end

  # GET /lens_types/new
  def new
    @lens_type = LensType.new
  end

  # GET /lens_types/1/edit
  def edit
  end

  # POST /lens_types
  # POST /lens_types.json
  def create
    @lens_type = LensType.new(lens_type_params)

    respond_to do |format|
      if @lens_type.save
        format.html { redirect_to lens_types_path, notice: 'Lens type was successfully created.' }
        format.json { render :index, status: :created, location: lens_types_path }
      else
        format.html { render :new }
        format.json { render json: @lens_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lens_types/1
  # PATCH/PUT /lens_types/1.json
  def update
    respond_to do |format|
      if @lens_type.update(lens_type_params)
        format.html { redirect_to lens_types_path, notice: 'Lens type was successfully updated.' }
        format.json { render :index, status: :ok, location: lens_types_path }
      else
        format.html { render :edit }
        format.json { render json: @lens_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lens_types/1
  # DELETE /lens_types/1.json
  def destroy
    @lens_type.destroy
    respond_to do |format|
      format.html { redirect_to lens_types_url, notice: 'Lens type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lens_type
      @lens_type = LensType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lens_type_params
      params.require(:lens_type).permit(:name)
    end
end
