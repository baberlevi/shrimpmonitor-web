class TankWarningThresholdsController < ApplicationController
  before_action :set_tank_warning_threshold, only: [:show, :edit, :update, :destroy]

  # GET /tank_warning_thresholds
  # GET /tank_warning_thresholds.json
  def index
    @tank_warning_thresholds = TankWarningThreshold.all
  end

  # GET /tank_warning_thresholds/1
  # GET /tank_warning_thresholds/1.json
  def show
  end

  # GET /tank_warning_thresholds/new
  def new
    @tank_warning_threshold = TankWarningThreshold.new
  end

  # GET /tank_warning_thresholds/1/edit
  def edit
  end

  # POST /tank_warning_thresholds
  # POST /tank_warning_thresholds.json
  def create
    @tank_warning_threshold = TankWarningThreshold.new(tank_warning_threshold_params)

    respond_to do |format|
      if @tank_warning_threshold.save
        format.html { redirect_to @tank_warning_threshold, notice: 'Tank warning threshold was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tank_warning_threshold }
      else
        format.html { render action: 'new' }
        format.json { render json: @tank_warning_threshold.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tank_warning_thresholds/1
  # PATCH/PUT /tank_warning_thresholds/1.json
  def update
    respond_to do |format|
      if @tank_warning_threshold.update(tank_warning_threshold_params)
        format.html { redirect_to @tank_warning_threshold, notice: 'Tank warning threshold was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tank_warning_threshold.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tank_warning_thresholds/1
  # DELETE /tank_warning_thresholds/1.json
  def destroy
    @tank_warning_threshold.destroy
    respond_to do |format|
      format.html { redirect_to tank_warning_thresholds_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tank_warning_threshold
      @tank_warning_threshold = TankWarningThreshold.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tank_warning_threshold_params
      params.require(:tank_warning_threshold).permit(:tank_id, :ph_threshold, :do_threshold, :orp_threshold, :k1_threshold, :k10_threshold, :temp_threshold)
    end
end
