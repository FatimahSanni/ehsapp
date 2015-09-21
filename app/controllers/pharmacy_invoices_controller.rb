class PharmacyInvoicesController < ApplicationController
  before_action :set_pharmacy_invoice, only: [:show, :edit, :update, :destroy]

  # GET /pharmacy_invoices
  # GET /pharmacy_invoices.json
  def index
    @pharmacy_invoices = PharmacyInvoice.all
  end

  # GET /pharmacy_invoices/1
  # GET /pharmacy_invoices/1.json
  def show
  end

  # GET /pharmacy_invoices/new
  def new
    @pharmacy_invoice = PharmacyInvoice.new
  end

  # GET /pharmacy_invoices/1/edit
  def edit
  end

  # POST /pharmacy_invoices
  # POST /pharmacy_invoices.json
  def create
    @pharmacy_invoice = PharmacyInvoice.new(pharmacy_invoice_params)

    respond_to do |format|
      if @pharmacy_invoice.save
        format.html { redirect_to @pharmacy_invoice, notice: 'Pharmacy invoice was successfully created.' }
        format.json { render :show, status: :created, location: @pharmacy_invoice }
      else
        format.html { render :new }
        format.json { render json: @pharmacy_invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pharmacy_invoices/1
  # PATCH/PUT /pharmacy_invoices/1.json
  def update
    respond_to do |format|
      if @pharmacy_invoice.update(pharmacy_invoice_params)
        format.html { redirect_to @pharmacy_invoice, notice: 'Pharmacy invoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @pharmacy_invoice }
      else
        format.html { render :edit }
        format.json { render json: @pharmacy_invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pharmacy_invoices/1
  # DELETE /pharmacy_invoices/1.json
  def destroy
    @pharmacy_invoice.destroy
    respond_to do |format|
      format.html { redirect_to pharmacy_invoices_url, notice: 'Pharmacy invoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pharmacy_invoice
      @pharmacy_invoice = PharmacyInvoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pharmacy_invoice_params
      params.require(:pharmacy_invoice).permit(:patient_id, :consultant_id, pharmacy_items_attributes: [:id, :name, :amount, :_destroy])
    end
end
