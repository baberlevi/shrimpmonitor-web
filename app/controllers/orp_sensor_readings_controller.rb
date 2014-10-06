class OrpSensorReadingsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_orp_sensor_reading, only: [:show, :edit, :update, :destroy]

  # GET /orp_sensor_readings
  # GET /orp_sensor_readings.json
  def index
    #@orp_sensor_readings = OrpSensorReading.all
    @orp_sensor_readings = OrpSensorReading.paginate(:page => params[:page])
  end

  # GET /orp_sensor_readings/1
  # GET /orp_sensor_readings/1.json
  def show
  end

  # GET /orp_sensor_readings/new
  def new
    @orp_sensor_reading = OrpSensorReading.new
  end

  # GET /orp_sensor_readings/1/edit
  def edit
  end

  # POST /orp_sensor_readings
  # POST /orp_sensor_readings.json
  def create
    @orp_sensor_reading = OrpSensorReading.new(orp_sensor_reading_params)

    respond_to do |format|
      if @orp_sensor_reading.save
        format.html { redirect_to @orp_sensor_reading, notice: 'Orp sensor reading was successfully created.' }
        format.json { render action: 'show', status: :created, location: @orp_sensor_reading }
      else
        format.html { render action: 'new' }
        format.json { render json: @orp_sensor_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orp_sensor_readings/1
  # PATCH/PUT /orp_sensor_readings/1.json
  def update
    respond_to do |format|
      if @orp_sensor_reading.update(orp_sensor_reading_params)
        format.html { redirect_to @orp_sensor_reading, notice: 'Orp sensor reading was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @orp_sensor_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orp_sensor_readings/1
  # DELETE /orp_sensor_readings/1.json
  def destroy
    @orp_sensor_reading.destroy
    respond_to do |format|
      format.html { redirect_to orp_sensor_readings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orp_sensor_reading
      @orp_sensor_reading = OrpSensorReading.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orp_sensor_reading_params
      params.require(:orp_sensor_reading).permit(:reading_timestamp, :orp_reading_value, :tank_id)
    end
end
