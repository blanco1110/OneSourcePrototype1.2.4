class DeviceRepairOrdersController < ApplicationController
  before_action :set_device_repair_order, only: [:show, :edit, :update, :destroy]

  # GET /device_repair_orders
  # GET /device_repair_orders.json
  def index
    @device_repair_orders = DeviceRepairOrder.all
  end

  # GET /device_repair_orders/1
  # GET /device_repair_orders/1.json
  def show
  end

  # GET /device_repair_orders/new
  def new
    @device_repair_order = DeviceRepairOrder.new
  end

  # GET /device_repair_orders/1/edit
  def edit
  end

  # POST /device_repair_orders
  # POST /device_repair_orders.json
  def create
    @device_repair_order = DeviceRepairOrder.new(device_repair_order_params)

    respond_to do |format|
      if @device_repair_order.save
        format.html { redirect_to @device_repair_order, notice: 'Device repair order was successfully created.' }
        format.json { render :show, status: :created, location: @device_repair_order }
      else
        format.html { render :new }
        format.json { render json: @device_repair_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /device_repair_orders/1
  # PATCH/PUT /device_repair_orders/1.json
  def update
    respond_to do |format|
      if @device_repair_order.update(device_repair_order_params)
        format.html { redirect_to @device_repair_order, notice: 'Device repair order was successfully updated.' }
        format.json { render :show, status: :ok, location: @device_repair_order }
      else
        format.html { render :edit }
        format.json { render json: @device_repair_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /device_repair_orders/1
  # DELETE /device_repair_orders/1.json
  def destroy
    @device_repair_order.destroy
    respond_to do |format|
      format.html { redirect_to device_repair_orders_url, notice: 'Device repair order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_device_repair_order
      @device_repair_order = DeviceRepairOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def device_repair_order_params
      params.require(:device_repair_order).permit(:device_id, :repair_order_id)
    end
end
