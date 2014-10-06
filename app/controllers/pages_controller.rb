class PagesController < ApplicationController
  def do_data
	@do_data_report = DoSensorReading.joins(:tank, :site, :company, :users).select("do_sensor_readings.id, reading_timestamp, do_reading_value, tank_id").order(reading_timestamp: :desc).limit(125)
	respond_to do |format|
	#respond_with @home_report do |format|
		#format.html
		#format.html {render 'data'}
		format.json {render json: @do_data_report.to_json}
	end

	#respond_to do |format|
	#	format.any { render :json => home_report.to_json}
	#end
  end

  def temp_data
	@temp_data_report = TempSensorReading.joins(:tank, :site, :company, :users).select("temp_sensor_readings.id, reading_timestamp, temp_reading_value, tank_id").order(reading_timestamp: :desc).limit(125)
	respond_to do |format|
		format.json {render json: @temp_data_report.to_json}
	end
  end

  def ph_data
	@ph_data_report = PhSensorReading.joins(:tank, :site, :company, :users).select("ph_sensor_readings.id, reading_timestamp, ph_reading_value, tank_id").order(reading_timestamp: :desc).limit(125)
	respond_to do |format|
		format.json {render json: @ph_data_report.to_json}
	end
  end

  #combine k1 & k10 later
  def sal_data
	@sal_data_report = K10SensorReading.joins(:tank, :site, :company, :users).select("k10_sensor_readings.id, reading_timestamp, sal_reading_value, tank_id").order(reading_timestamp: :desc).limit(125)
	respond_to do |format|
		format.json {render json: @sal_data_report.to_json}
	end
  end

  def orp_data
	@orp_data_report = OrpSensorReading.joins(:tank, :site, :company, :users).select("orp_sensor_readings.id, reading_timestamp, orp_reading_value, tank_id").order(reading_timestamp: :desc).limit(125)
	respond_to do |format|
		format.json {render json: @orp_data_report.to_json}
	end
  end




  def home
  end

  def about
  end

  def contact
  end
end
