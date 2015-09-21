class OpticalInvoicesController < ApplicationController
  before_action :set_optical_invoice, only: [:show, :edit, :update, :destroy]

  # GET /optical_invoices
  # GET /optical_invoices.json
  def index
    @optical_invoices = OpticalInvoice.all
  end

  # GET /optical_invoices/1
  # GET /optical_invoices/1.json
  def show
  end

  # GET /optical_invoices/new
  def new
    @optical_invoice = OpticalInvoice.new
  end

  # GET /optical_invoices/1/edit
  def edit
  end

  # POST /optical_invoices
  # POST /optical_invoices.json
  def create
    @optical_invoice = OpticalInvoice.new(optical_invoice_params)

    respond_to do |format|
      if @optical_invoice.save
        format.html { redirect_to @optical_invoice, notice: 'Optical invoice was successfully created.' }
        format.json { render :show, status: :created, location: @optical_invoice }
      else
        format.html { render :new }
        format.json { render json: @optical_invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /optical_invoices/1
  # PATCH/PUT /optical_invoices/1.json
  def update
    respond_to do |format|
      if @optical_invoice.update(optical_invoice_params)
        format.html { redirect_to @optical_invoice, notice: 'Optical invoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @optical_invoice }
      else
        format.html { render :edit }
        format.json { render json: @optical_invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /optical_invoices/1
  # DELETE /optical_invoices/1.json
  def destroy
    @optical_invoice.destroy
    respond_to do |format|
      format.html { redirect_to optical_invoices_url, notice: 'Optical invoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_optical_invoice
      @optical_invoice = OpticalInvoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def optical_invoice_params
      params.require(:optical_invoice).permit(:patient_id, :optometrist_id, optical_items_attributes: [:id, :name, :amount, :_destroy])
    end
end
