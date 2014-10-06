class PhSensorReadingsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_ph_sensor_reading, only: [:show, :edit, :update, :destroy]

  # GET /ph_sensor_readings
  # GET /ph_sensor_readings.json
  def index
    #@ph_sensor_readings = PhSensorReading.all
    @ph_sensor_readings = PhSensorReading.paginate(:page => params[:page])
  end

  # GET /ph_sensor_readings/1
  # GET /ph_sensor_readings/1.json
  def show
  end

  # GET /ph_sensor_readings/new
  def new
    @ph_sensor_reading = PhSensorReading.new
  end

  # GET /ph_sensor_readings/1/edit
  def edit
  end

  # POST /ph_sensor_readings
  # POST /ph_sensor_readings.json
  def create
    @ph_sensor_reading = PhSensorReading.new(ph_sensor_reading_params)

    respond_to do |format|
      if @ph_sensor_reading.save
        format.html { redirect_to @ph_sensor_reading, notice: 'Ph sensor reading was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ph_sensor_reading }
      else
        format.html { render action: 'new' }
        format.json { render json: @ph_sensor_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ph_sensor_readings/1
  # PATCH/PUT /ph_sensor_readings/1.json
  def update
    respond_to do |format|
      if @ph_sensor_reading.update(ph_sensor_reading_params)
        format.html { redirect_to @ph_sensor_reading, notice: 'Ph sensor reading was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ph_sensor_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ph_sensor_readings/1
  # DELETE /ph_sensor_readings/1.json
  def destroy
    @ph_sensor_reading.destroy
    respond_to do |format|
      format.html { redirect_to ph_sensor_readings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ph_sensor_reading
      @ph_sensor_reading = PhSensorReading.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ph_sensor_reading_params
      params.require(:ph_sensor_reading).permit(:reading_timestamp, :ph_reading_value, :sensor_id, :tank_id)
    end
end
