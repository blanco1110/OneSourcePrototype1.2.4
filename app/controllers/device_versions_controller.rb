class DeviceVersionsController < ApplicationController
  before_action :set_device_version, only: [:show, :edit, :update, :destroy]

  # GET /device_versions
  # GET /device_versions.json
  def index
    @device_versions = DeviceVersion.all
  end

  # GET /device_versions/1
  # GET /device_versions/1.json
  def show
  end

  # GET /device_versions/new
  def new
    @device_version = DeviceVersion.new
  end

  # GET /device_versions/1/edit
  def edit
  end

  # POST /device_versions
  # POST /device_versions.json
  def create
    @device_version = DeviceVersion.new(device_version_params)

    respond_to do |format|
      if @device_version.save
        format.html { redirect_to @device_version, notice: 'Device version was successfully created.' }
        format.json { render :show, status: :created, location: @device_version }
      else
        format.html { render :new }
        format.json { render json: @device_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /device_versions/1
  # PATCH/PUT /device_versions/1.json
  def update
    respond_to do |format|
      if @device_version.update(device_version_params)
        format.html { redirect_to @device_version, notice: 'Device version was successfully updated.' }
        format.json { render :show, status: :ok, location: @device_version }
      else
        format.html { render :edit }
        format.json { render json: @device_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /device_versions/1
  # DELETE /device_versions/1.json
  def destroy
    @device_version.destroy
    respond_to do |format|
      format.html { redirect_to device_versions_url, notice: 'Device version was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_device_version
      @device_version = DeviceVersion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def device_version_params
      params.require(:device_version).permit(:device_version_name, :device_manufacturer_id)
    end
end
