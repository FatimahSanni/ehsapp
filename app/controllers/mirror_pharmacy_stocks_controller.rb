class MirrorPharmacyStocksController < ApplicationController
  before_action :set_mirror_pharmacy_stock, only: [:show, :edit, :update, :destroy]

  # GET /mirror_pharmacy_stocks
  # GET /mirror_pharmacy_stocks.json
  def index
    @mirror_pharmacy_stocks = MirrorPharmacyStock.all
  end

  # GET /mirror_pharmacy_stocks/1
  # GET /mirror_pharmacy_stocks/1.json
  def show
  end

  # GET /mirror_pharmacy_stocks/new
  def new
    @mirror_pharmacy_stock = MirrorPharmacyStock.new
  end

  # GET /mirror_pharmacy_stocks/1/edit
  def edit
  end

  # POST /mirror_pharmacy_stocks
  # POST /mirror_pharmacy_stocks.json
  def create
    @mirror_pharmacy_stock = MirrorPharmacyStock.new(mirror_pharmacy_stock_params)

    respond_to do |format|
      if @mirror_pharmacy_stock.save
        format.html { redirect_to @mirror_pharmacy_stock, notice: 'Mirror pharmacy stock was successfully created.' }
        format.json { render :show, status: :created, location: @mirror_pharmacy_stock }
      else
        format.html { render :new }
        format.json { render json: @mirror_pharmacy_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mirror_pharmacy_stocks/1
  # PATCH/PUT /mirror_pharmacy_stocks/1.json
  def update
    respond_to do |format|
      if @mirror_pharmacy_stock.update(mirror_pharmacy_stock_params)
        format.html { redirect_to @mirror_pharmacy_stock, notice: 'Mirror pharmacy stock was successfully updated.' }
        format.json { render :show, status: :ok, location: @mirror_pharmacy_stock }
      else
        format.html { render :edit }
        format.json { render json: @mirror_pharmacy_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mirror_pharmacy_stocks/1
  # DELETE /mirror_pharmacy_stocks/1.json
  def destroy
    @mirror_pharmacy_stock.destroy
    respond_to do |format|
      format.html { redirect_to mirror_pharmacy_stocks_url, notice: 'Mirror pharmacy stock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mirror_pharmacy_stock
      @mirror_pharmacy_stock = MirrorPharmacyStock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mirror_pharmacy_stock_params
      params.require(:mirror_pharmacy_stock).permit(:amount, :pharmacy_stock_id)
    end
end
