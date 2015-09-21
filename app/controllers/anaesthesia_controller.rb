class AnaesthesiaController < ApplicationController
  before_action :set_anaesthesia, only: [:show, :edit, :update, :destroy]

  # GET /anaesthesia
  # GET /anaesthesia.json
  def index
    @anaesthesia = Anaesthesia.all
  end

  # GET /anaesthesia/1
  # GET /anaesthesia/1.json
  def show
  end

  # GET /anaesthesia/new
  def new
    @anaesthesia = Anaesthesia.new
  end

  # GET /anaesthesia/1/edit
  def edit
  end

  # POST /anaesthesia
  # POST /anaesthesia.json
  def create
    @anaesthesia = Anaesthesia.new(anaesthesia_params)

    respond_to do |format|
      if @anaesthesia.save
        format.html { redirect_to @anaesthesia, notice: 'Anaesthesia was successfully created.' }
        format.json { render :show, status: :created, location: @anaesthesia }
      else
        format.html { render :new }
        format.json { render json: @anaesthesia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anaesthesia/1
  # PATCH/PUT /anaesthesia/1.json
  def update
    respond_to do |format|
      if @anaesthesia.update(anaesthesia_params)
        format.html { redirect_to @anaesthesia, notice: 'Anaesthesia was successfully updated.' }
        format.json { render :show, status: :ok, location: @anaesthesia }
      else
        format.html { render :edit }
        format.json { render json: @anaesthesia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anaesthesia/1
  # DELETE /anaesthesia/1.json
  def destroy
    @anaesthesia.destroy
    respond_to do |format|
      format.html { redirect_to anaesthesia_index_url, notice: 'Anaesthesia was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anaesthesia
      @anaesthesia = Anaesthesia.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anaesthesia_params
      params.require(:anaesthesia).permit(:name)
    end
end
