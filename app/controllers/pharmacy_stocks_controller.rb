class PharmacyStocksController < ApplicationController
  before_action :set_pharmacy_stock, only: [:show, :edit, :update, :destroy]

  # GET /pharmacy_stocks
  # GET /pharmacy_stocks.json
  def index
    @pharmacy_stocks = PharmacyStock.all
  end

  # GET /pharmacy_stocks/1
  # GET /pharmacy_stocks/1.json
  def show
  end

  # GET /pharmacy_stocks/new
  def new
    @pharmacy_stock = PharmacyStock.new
  end

  # GET /pharmacy_stocks/1/edit
  def edit
  end

  # POST /pharmacy_stocks
  # POST /pharmacy_stocks.json
  def create
    @pharmacy_stock = PharmacyStock.new(pharmacy_stock_params)

    respond_to do |format|
      if @pharmacy_stock.save
        format.html { redirect_to @pharmacy_stock, notice: 'Pharmacy stock was successfully created.' }
        format.json { render :show, status: :created, location: @pharmacy_stock }
      else
        format.html { render :new }
        format.json { render json: @pharmacy_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pharmacy_stocks/1
  # PATCH/PUT /pharmacy_stocks/1.json
  def update
    respond_to do |format|
      if @pharmacy_stock.update(pharmacy_stock_params)
        format.html { redirect_to @pharmacy_stock, notice: 'Pharmacy stock was successfully updated.' }
        format.json { render :show, status: :ok, location: @pharmacy_stock }
      else
        format.html { render :edit }
        format.json { render json: @pharmacy_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pharmacy_stocks/1
  # DELETE /pharmacy_stocks/1.json
  def destroy
    @pharmacy_stock.destroy
    respond_to do |format|
      format.html { redirect_to pharmacy_stocks_url, notice: 'Pharmacy stock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pharmacy_stock
      @pharmacy_stock = PharmacyStock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pharmacy_stock_params
      params.require(:pharmacy_stock).permit(:name, :amount, :category)
    end
end
