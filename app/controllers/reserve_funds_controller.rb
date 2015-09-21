class ReserveFundsController < ApplicationController
  before_action :set_reserve_fund, only: [:show, :edit, :update, :destroy]

  # GET /reserve_funds
  # GET /reserve_funds.json
  def index
    @reserve_funds = ReserveFund.all
  end

  # GET /reserve_funds/1
  # GET /reserve_funds/1.json
  def show
  end

  # GET /reserve_funds/new
  def new
    @reserve_fund = ReserveFund.new
  end

  # GET /reserve_funds/1/edit
  def edit
  end

  # POST /reserve_funds
  # POST /reserve_funds.json
  def create
    @reserve_fund = ReserveFund.new(reserve_fund_params)

    respond_to do |format|
      if @reserve_fund.save
        format.html { redirect_to @reserve_fund, notice: 'Reserve fund was successfully created.' }
        format.json { render :show, status: :created, location: @reserve_fund }
      else
        format.html { render :new }
        format.json { render json: @reserve_fund.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reserve_funds/1
  # PATCH/PUT /reserve_funds/1.json
  def update
    respond_to do |format|
      if @reserve_fund.update(reserve_fund_params)
        format.html { redirect_to @reserve_fund, notice: 'Reserve fund was successfully updated.' }
        format.json { render :show, status: :ok, location: @reserve_fund }
      else
        format.html { render :edit }
        format.json { render json: @reserve_fund.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reserve_funds/1
  # DELETE /reserve_funds/1.json
  def destroy
    @reserve_fund.destroy
    respond_to do |format|
      format.html { redirect_to reserve_funds_url, notice: 'Reserve fund was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reserve_fund
      @reserve_fund = ReserveFund.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reserve_fund_params
      params.require(:reserve_fund).permit(:patient_id, :amount, :remark)
    end
end
