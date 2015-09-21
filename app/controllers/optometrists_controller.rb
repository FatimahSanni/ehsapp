class OptometristsController < ApplicationController
  before_action :set_optometrist, only: [:show, :edit, :update, :destroy]

  # GET /optometrists
  # GET /optometrists.json
  def index
    @optometrists = Optometrist.all
  end

  # GET /optometrists/1
  # GET /optometrists/1.json
  def show
  end

  # GET /optometrists/new
  def new
    @optometrist = Optometrist.new
  end

  # GET /optometrists/1/edit
  def edit
  end

  # POST /optometrists
  # POST /optometrists.json
  def create
    @optometrist = Optometrist.new(optometrist_params)

    respond_to do |format|
      if @optometrist.save
        format.html { redirect_to @optometrist, notice: 'Optometrist was successfully created.' }
        format.json { render :show, status: :created, location: @optometrist }
      else
        format.html { render :new }
        format.json { render json: @optometrist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /optometrists/1
  # PATCH/PUT /optometrists/1.json
  def update
    respond_to do |format|
      if @optometrist.update(optometrist_params)
        format.html { redirect_to @optometrist, notice: 'Optometrist was successfully updated.' }
        format.json { render :show, status: :ok, location: @optometrist }
      else
        format.html { render :edit }
        format.json { render json: @optometrist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /optometrists/1
  # DELETE /optometrists/1.json
  def destroy
    @optometrist.destroy
    respond_to do |format|
      format.html { redirect_to optometrists_url, notice: 'Optometrist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_optometrist
      @optometrist = Optometrist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def optometrist_params
      params.require(:optometrist).permit(:name)
    end
end
