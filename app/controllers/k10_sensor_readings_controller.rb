class K10SensorReadingsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_k10_sensor_reading, only: [:show, :edit, :update, :destroy]

  # GET /k10_sensor_readings
  # GET /k10_sensor_readings.json
  def index
    #@k10_sensor_readings = K10SensorReading.all
    @k10_sensor_readings = K10SensorReading.paginate(:page => params[:page])
	
  end

  # GET /k10_sensor_readings/1
  # GET /k10_sensor_readings/1.json
  def show
  end

  # GET /k10_sensor_readings/new
  def new
    @k10_sensor_reading = K10SensorReading.new
  end

  # GET /k10_sensor_readings/1/edit
  def edit
  end

  # POST /k10_sensor_readings
  # POST /k10_sensor_readings.json
  def create
    @k10_sensor_reading = K10SensorReading.new(k10_sensor_reading_params)

    respond_to do |format|
      if @k10_sensor_reading.save
        format.html { redirect_to @k10_sensor_reading, notice: 'K10 sensor reading was successfully created.' }
        format.json { render action: 'show', status: :created, location: @k10_sensor_reading }
      else
        format.html { render action: 'new' }
        format.json { render json: @k10_sensor_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /k10_sensor_readings/1
  # PATCH/PUT /k10_sensor_readings/1.json
  def update
    respond_to do |format|
      if @k10_sensor_reading.update(k10_sensor_reading_params)
        format.html { redirect_to @k10_sensor_reading, notice: 'K10 sensor reading was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @k10_sensor_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /k10_sensor_readings/1
  # DELETE /k10_sensor_readings/1.json
  def destroy
    @k10_sensor_reading.destroy
    respond_to do |format|
      format.html { redirect_to k10_sensor_readings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_k10_sensor_reading
      @k10_sensor_reading = K10SensorReading.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def k10_sensor_reading_params
      params.require(:k10_sensor_reading).permit(:reading_timestamp, :ec_reading_value, :tds_reading_value, :sal_reading_value, :tank_id)
    end
end
