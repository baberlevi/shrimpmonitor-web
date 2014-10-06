class DoSensorReadingsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_do_sensor_reading, only: [:show, :edit, :update, :destroy]

  # GET /do_sensor_readings
  # GET /do_sensor_readings.json
  def index
    #@do_sensor_readings = DoSensorReading.all
    #@do_sensor_readings = DoSensorReading.paginate(:page => params[:page])
    #@do_sensor_readings = DoSensorReading.joins(:tank, :site, :company, :users).where(:users => {"id" => current_user.id}).paginate(:page => params[:page]).to_sql

    if current_user.role == 'admin'
      @do_sensor_readings = DoSensorReading.joins(:tank, :site, :company).paginate(:page => params[:page])
    else
      @do_sensor_readings = DoSensorReading.joins(:tank, :site, :company, :users).where(:users => {"id" => current_user.id}).paginate(:page => params[:page])
    end

    #@do_sensor_readings = @user.do_sensor_readings
  end

  # GET /do_sensor_readings/1
  # GET /do_sensor_readings/1.json
  def show
  end

  # GET /do_sensor_readings/new
  def new
    @do_sensor_reading = DoSensorReading.new
  end

  # GET /do_sensor_readings/1/edit
  def edit
  end

  # POST /do_sensor_readings
  # POST /do_sensor_readings.json
  def create
    @do_sensor_reading = DoSensorReading.new(do_sensor_reading_params)

    respond_to do |format|
      if @do_sensor_reading.save
        format.html { redirect_to @do_sensor_reading, notice: 'Do sensor reading was successfully created.' }
        format.json { render action: 'show', status: :created, location: @do_sensor_reading }
      else
        format.html { render action: 'new' }
        format.json { render json: @do_sensor_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /do_sensor_readings/1
  # PATCH/PUT /do_sensor_readings/1.json
  def update
    respond_to do |format|
      if @do_sensor_reading.update(do_sensor_reading_params)
        format.html { redirect_to @do_sensor_reading, notice: 'Do sensor reading was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @do_sensor_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /do_sensor_readings/1
  # DELETE /do_sensor_readings/1.json
  def destroy
    @do_sensor_reading.destroy
    respond_to do |format|
      format.html { redirect_to do_sensor_readings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_do_sensor_reading
      @do_sensor_reading = DoSensorReading.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def do_sensor_reading_params
      params.require(:do_sensor_reading).permit(:reading_timestamp, :do_reading_value, :do_percent_reading, :tank_id)
    end
end
