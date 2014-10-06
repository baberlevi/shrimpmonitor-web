class K1SensorReadingsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_k1_sensor_reading, only: [:show, :edit, :update, :destroy]

  # GET /k1_sensor_readings
  # GET /k1_sensor_readings.json
  def index
    #@k1_sensor_readings = K1SensorReading.all
    @k1_sensor_readings = K1SensorReading.paginate(:page => params[:page])
  end

  # GET /k1_sensor_readings/1
  # GET /k1_sensor_readings/1.json
  def show
  end

  # GET /k1_sensor_readings/new
  def new
    @k1_sensor_reading = K1SensorReading.new
  end

  # GET /k1_sensor_readings/1/edit
  def edit
  end

  # POST /k1_sensor_readings
  # POST /k1_sensor_readings.json
  def create
    @k1_sensor_reading = K1SensorReading.new(k1_sensor_reading_params)

    respond_to do |format|
      if @k1_sensor_reading.save
        format.html { redirect_to @k1_sensor_reading, notice: 'K1 sensor reading was successfully created.' }
        format.json { render action: 'show', status: :created, location: @k1_sensor_reading }
      else
        format.html { render action: 'new' }
        format.json { render json: @k1_sensor_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /k1_sensor_readings/1
  # PATCH/PUT /k1_sensor_readings/1.json
  def update
    respond_to do |format|
      if @k1_sensor_reading.update(k1_sensor_reading_params)
        format.html { redirect_to @k1_sensor_reading, notice: 'K1 sensor reading was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @k1_sensor_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /k1_sensor_readings/1
  # DELETE /k1_sensor_readings/1.json
  def destroy
    @k1_sensor_reading.destroy
    respond_to do |format|
      format.html { redirect_to k1_sensor_readings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_k1_sensor_reading
      @k1_sensor_reading = K1SensorReading.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def k1_sensor_reading_params
      params.require(:k1_sensor_reading).permit(:reading_timestamp, :ec_reading_value, :tds_reading_value, :sal_reading_value, :tank_id)
    end
end
