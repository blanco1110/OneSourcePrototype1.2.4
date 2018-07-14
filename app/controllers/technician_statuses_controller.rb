class TechnicianStatusesController < ApplicationController
  before_action :set_technician_status, only: [:show, :edit, :update, :destroy]

  # GET /technician_statuses
  # GET /technician_statuses.json
  def index
    @technician_statuses = TechnicianStatus.all
  end

  # GET /technician_statuses/1
  # GET /technician_statuses/1.json
  def show
  end

  # GET /technician_statuses/new
  def new
    @technician_status = TechnicianStatus.new
  end

  # GET /technician_statuses/1/edit
  def edit
  end

  # POST /technician_statuses
  # POST /technician_statuses.json
  def create
    @technician_status = TechnicianStatus.new(technician_status_params)

    respond_to do |format|
      if @technician_status.save
        format.html { redirect_to @technician_status, notice: 'Technician status was successfully created.' }
        format.json { render :show, status: :created, location: @technician_status }
      else
        format.html { render :new }
        format.json { render json: @technician_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /technician_statuses/1
  # PATCH/PUT /technician_statuses/1.json
  def update
    respond_to do |format|
      if @technician_status.update(technician_status_params)
        format.html { redirect_to @technician_status, notice: 'Technician status was successfully updated.' }
        format.json { render :show, status: :ok, location: @technician_status }
      else
        format.html { render :edit }
        format.json { render json: @technician_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /technician_statuses/1
  # DELETE /technician_statuses/1.json
  def destroy
    @technician_status.destroy
    respond_to do |format|
      format.html { redirect_to technician_statuses_url, notice: 'Technician status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_technician_status
      @technician_status = TechnicianStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def technician_status_params
      params.require(:technician_status).permit(:tech_status)
    end
end
