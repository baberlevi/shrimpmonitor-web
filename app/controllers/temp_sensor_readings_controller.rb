class TempSensorReadingsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_temp_sensor_reading, only: [:show, :edit, :update, :destroy]

  # GET /temp_sensor_readings
  # GET /temp_sensor_readings.json
  def index
    #@temp_sensor_readings = TempSensorReading.all
    @temp_sensor_readings = TempSensorReading.paginate(:page => params[:page])
  end

  # GET /temp_sensor_readings/1
  # GET /temp_sensor_readings/1.json
  def show
  end

  # GET /temp_sensor_readings/new
  def new
    @temp_sensor_reading = TempSensorReading.new
  end

  # GET /temp_sensor_readings/1/edit
  def edit
  end

  # POST /temp_sensor_readings
  # POST /temp_sensor_readings.json
  def create
    @temp_sensor_reading = TempSensorReading.new(temp_sensor_reading_params)

    respond_to do |format|
      if @temp_sensor_reading.save
        format.html { redirect_to @temp_sensor_reading, notice: 'Temp sensor reading was successfully created.' }
        format.json { render action: 'show', status: :created, location: @temp_sensor_reading }
      else
        format.html { render action: 'new' }
        format.json { render json: @temp_sensor_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /temp_sensor_readings/1
  # PATCH/PUT /temp_sensor_readings/1.json
  def update
    respond_to do |format|
      if @temp_sensor_reading.update(temp_sensor_reading_params)
        format.html { redirect_to @temp_sensor_reading, notice: 'Temp sensor reading was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @temp_sensor_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temp_sensor_readings/1
  # DELETE /temp_sensor_readings/1.json
  def destroy
    @temp_sensor_reading.destroy
    respond_to do |format|
      format.html { redirect_to temp_sensor_readings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_temp_sensor_reading
      @temp_sensor_reading = TempSensorReading.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def temp_sensor_reading_params
      params.require(:temp_sensor_reading).permit(:reading_timestamp, :temp_reading_value, :display_type, :tank_id)
    end
end
