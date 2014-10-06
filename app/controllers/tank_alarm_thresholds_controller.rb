class TankAlarmThresholdsController < ApplicationController
  before_action :set_tank_alarm_threshold, only: [:show, :edit, :update, :destroy]

  # GET /tank_alarm_thresholds
  # GET /tank_alarm_thresholds.json
  def index
    @tank_alarm_thresholds = TankAlarmThreshold.all
  end

  # GET /tank_alarm_thresholds/1
  # GET /tank_alarm_thresholds/1.json
  def show
  end

  # GET /tank_alarm_thresholds/new
  def new
    @tank_alarm_threshold = TankAlarmThreshold.new
  end

  # GET /tank_alarm_thresholds/1/edit
  def edit
  end

  # POST /tank_alarm_thresholds
  # POST /tank_alarm_thresholds.json
  def create
    @tank_alarm_threshold = TankAlarmThreshold.new(tank_alarm_threshold_params)

    respond_to do |format|
      if @tank_alarm_threshold.save
        format.html { redirect_to @tank_alarm_threshold, notice: 'Tank alarm threshold was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tank_alarm_threshold }
      else
        format.html { render action: 'new' }
        format.json { render json: @tank_alarm_threshold.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tank_alarm_thresholds/1
  # PATCH/PUT /tank_alarm_thresholds/1.json
  def update
    respond_to do |format|
      if @tank_alarm_threshold.update(tank_alarm_threshold_params)
        format.html { redirect_to @tank_alarm_threshold, notice: 'Tank alarm threshold was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tank_alarm_threshold.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tank_alarm_thresholds/1
  # DELETE /tank_alarm_thresholds/1.json
  def destroy
    @tank_alarm_threshold.destroy
    respond_to do |format|
      format.html { redirect_to tank_alarm_thresholds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tank_alarm_threshold
      @tank_alarm_threshold = TankAlarmThreshold.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tank_alarm_threshold_params
      params.require(:tank_alarm_threshold).permit(:tank_id, :ph_threshold, :do_threshold, :orp_threshold, :k1_threshold, :k10_threshold, :temp_threshold)
    end
end
