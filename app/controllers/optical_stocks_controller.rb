class OpticalStocksController < ApplicationController
  before_action :set_optical_stock, only: [:show, :edit, :update, :destroy]

  # GET /optical_stocks
  # GET /optical_stocks.json
  def index
    @optical_stocks = OpticalStock.all
  end

  # GET /optical_stocks/1
  # GET /optical_stocks/1.json
  def show
  end

  # GET /optical_stocks/new
  def new
    @optical_stock = OpticalStock.new
  end

  # GET /optical_stocks/1/edit
  def edit
  end

  # POST /optical_stocks
  # POST /optical_stocks.json
  def create
    @optical_stock = OpticalStock.new(optical_stock_params)

    respond_to do |format|
      if @optical_stock.save
        format.html { redirect_to @optical_stock, notice: 'Optical stock was successfully created.' }
        format.json { render :show, status: :created, location: @optical_stock }
      else
        format.html { render :new }
        format.json { render json: @optical_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /optical_stocks/1
  # PATCH/PUT /optical_stocks/1.json
  def update
    respond_to do |format|
      if @optical_stock.update(optical_stock_params)
        format.html { redirect_to @optical_stock, notice: 'Optical stock was successfully updated.' }
        format.json { render :show, status: :ok, location: @optical_stock }
      else
        format.html { render :edit }
        format.json { render json: @optical_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /optical_stocks/1
  # DELETE /optical_stocks/1.json
  def destroy
    @optical_stock.destroy
    respond_to do |format|
      format.html { redirect_to optical_stocks_url, notice: 'Optical stock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_optical_stock
      @optical_stock = OpticalStock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def optical_stock_params
      params.require(:optical_stock).permit(:name, :amount, :category)
    end
end
