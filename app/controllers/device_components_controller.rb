class DeviceComponentsController < ApplicationController
  before_action :set_device_component, only: [:show, :edit, :update, :destroy]

  # GET /device_components
  # GET /device_components.json
  def index
    @device_components = DeviceComponent.all
  end

  # GET /device_components/1
  # GET /device_components/1.json
  def show
  end

  # GET /device_components/new
  def new
    @device_component = DeviceComponent.new
  end

  # GET /device_components/1/edit
  def edit
  end

  # POST /device_components
  # POST /device_components.json
  def create
    @device_component = DeviceComponent.new(device_component_params)

    respond_to do |format|
      if @device_component.save
        format.html { redirect_to @device_component, notice: 'Device component was successfully created.' }
        format.json { render :show, status: :created, location: @device_component }
      else
        format.html { render :new }
        format.json { render json: @device_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /device_components/1
  # PATCH/PUT /device_components/1.json
  def update
    respond_to do |format|
      if @device_component.update(device_component_params)
        format.html { redirect_to @device_component, notice: 'Device component was successfully updated.' }
        format.json { render :show, status: :ok, location: @device_component }
      else
        format.html { render :edit }
        format.json { render json: @device_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /device_components/1
  # DELETE /device_components/1.json
  def destroy
    @device_component.destroy
    respond_to do |format|
      format.html { redirect_to device_components_url, notice: 'Device component was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_device_component
      @device_component = DeviceComponent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def device_component_params
      params.require(:device_component).permit(:device_version_id, :device_comp_name, :device_comp_color, :device_comp_description, :device_component_status_id, :device_comp_cost)
    end
end
