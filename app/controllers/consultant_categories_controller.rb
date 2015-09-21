class ConsultantCategoriesController < ApplicationController
  before_action :set_consultant_category, only: [:show, :edit, :update, :destroy]

  # GET /consultant_categories
  # GET /consultant_categories.json
  def index
    @consultant_categories = ConsultantCategory.all
  end

  # GET /consultant_categories/1
  # GET /consultant_categories/1.json
  def show
  end

  # GET /consultant_categories/new
  def new
    @consultant_category = ConsultantCategory.new
  end

  # GET /consultant_categories/1/edit
  def edit
  end

  # POST /consultant_categories
  # POST /consultant_categories.json
  def create
    @consultant_category = ConsultantCategory.new(consultant_category_params)

    respond_to do |format|
      if @consultant_category.save
        format.html { redirect_to @consultant_category, notice: 'Consultant category was successfully created.' }
        format.json { render :show, status: :created, location: @consultant_category }
      else
        format.html { render :new }
        format.json { render json: @consultant_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consultant_categories/1
  # PATCH/PUT /consultant_categories/1.json
  def update
    respond_to do |format|
      if @consultant_category.update(consultant_category_params)
        format.html { redirect_to @consultant_category, notice: 'Consultant category was successfully updated.' }
        format.json { render :show, status: :ok, location: @consultant_category }
      else
        format.html { render :edit }
        format.json { render json: @consultant_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consultant_categories/1
  # DELETE /consultant_categories/1.json
  def destroy
    @consultant_category.destroy
    respond_to do |format|
      format.html { redirect_to consultant_categories_url, notice: 'Consultant category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consultant_category
      @consultant_category = ConsultantCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consultant_category_params
      params.require(:consultant_category).permit(:name)
    end
end
