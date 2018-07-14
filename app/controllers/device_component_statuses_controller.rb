class DeviceComponentStatusesController < ApplicationController
  before_action :set_device_component_status, only: [:show, :edit, :update, :destroy]

  # GET /device_component_statuses
  # GET /device_component_statuses.json
  def index
    @device_component_statuses = DeviceComponentStatus.all
  end

  # GET /device_component_statuses/1
  # GET /device_component_statuses/1.json
  def show
  end

  # GET /device_component_statuses/new
  def new
    @device_component_status = DeviceComponentStatus.new
  end

  # GET /device_component_statuses/1/edit
  def edit
  end

  # POST /device_component_statuses
  # POST /device_component_statuses.json
  def create
    @device_component_status = DeviceComponentStatus.new(device_component_status_params)

    respond_to do |format|
      if @device_component_status.save
        format.html { redirect_to @device_component_status, notice: 'Device component status was successfully created.' }
        format.json { render :show, status: :created, location: @device_component_status }
      else
        format.html { render :new }
        format.json { render json: @device_component_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /device_component_statuses/1
  # PATCH/PUT /device_component_statuses/1.json
  def update
    respond_to do |format|
      if @device_component_status.update(device_component_status_params)
        format.html { redirect_to @device_component_status, notice: 'Device component status was successfully updated.' }
        format.json { render :show, status: :ok, location: @device_component_status }
      else
        format.html { render :edit }
        format.json { render json: @device_component_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /device_component_statuses/1
  # DELETE /device_component_statuses/1.json
  def destroy
    @device_component_status.destroy
    respond_to do |format|
      format.html { redirect_to device_component_statuses_url, notice: 'Device component status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_device_component_status
      @device_component_status = DeviceComponentStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def device_component_status_params
      params.require(:device_component_status).permit(:device_comp_status)
    end
end
