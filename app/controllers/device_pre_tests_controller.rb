class DevicePreTestsController < ApplicationController
  before_action :set_device_pre_test, only: [:show, :edit, :update, :destroy]

  # GET /device_pre_tests
  # GET /device_pre_tests.json
  def index
    @device_pre_tests = DevicePreTest.all
  end

  # GET /device_pre_tests/1
  # GET /device_pre_tests/1.json
  def show
  end

  # GET /device_pre_tests/new
  def new
    @device_pre_test = DevicePreTest.new
  end

  # GET /device_pre_tests/1/edit
  def edit
  end

  # POST /device_pre_tests
  # POST /device_pre_tests.json
  def create
    @device_pre_test = DevicePreTest.new(device_pre_test_params)

    respond_to do |format|
      if @device_pre_test.save
        format.html { redirect_to @device_pre_test, notice: 'Device pre test was successfully created.' }
        format.json { render :show, status: :created, location: @device_pre_test }
      else
        format.html { render :new }
        format.json { render json: @device_pre_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /device_pre_tests/1
  # PATCH/PUT /device_pre_tests/1.json
  def update
    respond_to do |format|
      if @device_pre_test.update(device_pre_test_params)
        format.html { redirect_to @device_pre_test, notice: 'Device pre test was successfully updated.' }
        format.json { render :show, status: :ok, location: @device_pre_test }
      else
        format.html { render :edit }
        format.json { render json: @device_pre_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /device_pre_tests/1
  # DELETE /device_pre_tests/1.json
  def destroy
    @device_pre_test.destroy
    respond_to do |format|
      format.html { redirect_to device_pre_tests_url, notice: 'Device pre test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_device_pre_test
      @device_pre_test = DevicePreTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def device_pre_test_params
      params.require(:device_pre_test).permit(:device_pre_test_date, :repair_order_id, :test_id, :pre_test_condition, :pre_test_notes)
    end
end
