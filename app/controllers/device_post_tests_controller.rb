class DevicePostTestsController < ApplicationController
  before_action :set_device_post_test, only: [:show, :edit, :update, :destroy]

  # GET /device_post_tests
  # GET /device_post_tests.json
  def index
    @device_post_tests = DevicePostTest.all
  end

  # GET /device_post_tests/1
  # GET /device_post_tests/1.json
  def show
  end

  # GET /device_post_tests/new
  def new
    @device_post_test = DevicePostTest.new
  end

  # GET /device_post_tests/1/edit
  def edit
  end

  # POST /device_post_tests
  # POST /device_post_tests.json
  def create
    @device_post_test = DevicePostTest.new(device_post_test_params)

    respond_to do |format|
      if @device_post_test.save
        format.html { redirect_to @device_post_test, notice: 'Device post test was successfully created.' }
        format.json { render :show, status: :created, location: @device_post_test }
      else
        format.html { render :new }
        format.json { render json: @device_post_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /device_post_tests/1
  # PATCH/PUT /device_post_tests/1.json
  def update
    respond_to do |format|
      if @device_post_test.update(device_post_test_params)
        format.html { redirect_to @device_post_test, notice: 'Device post test was successfully updated.' }
        format.json { render :show, status: :ok, location: @device_post_test }
      else
        format.html { render :edit }
        format.json { render json: @device_post_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /device_post_tests/1
  # DELETE /device_post_tests/1.json
  def destroy
    @device_post_test.destroy
    respond_to do |format|
      format.html { redirect_to device_post_tests_url, notice: 'Device post test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_device_post_test
      @device_post_test = DevicePostTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def device_post_test_params
      params.require(:device_post_test).permit(:device_post_test_date, :repair_order_id, :test_id, :post_test_condition, :post_test_notes)
    end
end
