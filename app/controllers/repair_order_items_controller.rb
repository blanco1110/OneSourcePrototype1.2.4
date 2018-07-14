class RepairOrderItemsController < ApplicationController
  before_action :set_repair_order_item, only: [:show, :edit, :update, :destroy]

  # GET /repair_order_items
  # GET /repair_order_items.json
  def index
    @repair_order_items = RepairOrderItem.all
  end

  # GET /repair_order_items/1
  # GET /repair_order_items/1.json
  def show
  end

  # GET /repair_order_items/new
  def new
    @repair_order_item = RepairOrderItem.new
  end

  # GET /repair_order_items/1/edit
  def edit
  end

  # POST /repair_order_items
  # POST /repair_order_items.json
  def create
    @repair_order_item = RepairOrderItem.new(repair_order_item_params)

    respond_to do |format|
      if @repair_order_item.save
        format.html { redirect_to @repair_order_item, notice: 'Repair order item was successfully created.' }
        format.json { render :show, status: :created, location: @repair_order_item }
      else
        format.html { render :new }
        format.json { render json: @repair_order_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repair_order_items/1
  # PATCH/PUT /repair_order_items/1.json
  def update
    respond_to do |format|
      if @repair_order_item.update(repair_order_item_params)
        format.html { redirect_to @repair_order_item, notice: 'Repair order item was successfully updated.' }
        format.json { render :show, status: :ok, location: @repair_order_item }
      else
        format.html { render :edit }
        format.json { render json: @repair_order_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repair_order_items/1
  # DELETE /repair_order_items/1.json
  def destroy
    @repair_order_item.destroy
    respond_to do |format|
      format.html { redirect_to repair_order_items_url, notice: 'Repair order item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repair_order_item
      @repair_order_item = RepairOrderItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repair_order_item_params
      params.require(:repair_order_item).permit(:repair_order_id, :device_component_id, :technician_id, :warranty_expire_date, :warranty_coverage_notes, :repaired_as_warranty, :warranty_repair_date)
    end
end
