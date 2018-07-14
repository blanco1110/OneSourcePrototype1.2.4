class RepairOrderStatusesController < ApplicationController
  before_action :set_repair_order_status, only: [:show, :edit, :update, :destroy]

  # GET /repair_order_statuses
  # GET /repair_order_statuses.json
  def index
    @repair_order_statuses = RepairOrderStatus.all
  end

  # GET /repair_order_statuses/1
  # GET /repair_order_statuses/1.json
  def show
  end

  # GET /repair_order_statuses/new
  def new
    @repair_order_status = RepairOrderStatus.new
  end

  # GET /repair_order_statuses/1/edit
  def edit
  end

  # POST /repair_order_statuses
  # POST /repair_order_statuses.json
  def create
    @repair_order_status = RepairOrderStatus.new(repair_order_status_params)

    respond_to do |format|
      if @repair_order_status.save
        format.html { redirect_to @repair_order_status, notice: 'Repair order status was successfully created.' }
        format.json { render :show, status: :created, location: @repair_order_status }
      else
        format.html { render :new }
        format.json { render json: @repair_order_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repair_order_statuses/1
  # PATCH/PUT /repair_order_statuses/1.json
  def update
    respond_to do |format|
      if @repair_order_status.update(repair_order_status_params)
        format.html { redirect_to @repair_order_status, notice: 'Repair order status was successfully updated.' }
        format.json { render :show, status: :ok, location: @repair_order_status }
      else
        format.html { render :edit }
        format.json { render json: @repair_order_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repair_order_statuses/1
  # DELETE /repair_order_statuses/1.json
  def destroy
    @repair_order_status.destroy
    respond_to do |format|
      format.html { redirect_to repair_order_statuses_url, notice: 'Repair order status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repair_order_status
      @repair_order_status = RepairOrderStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repair_order_status_params
      params.require(:repair_order_status).permit(:repair_order_status)
    end
end
