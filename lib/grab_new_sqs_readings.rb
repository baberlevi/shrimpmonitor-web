#!/usr/bin/env ruby

require 'aws-sdk'

sqs = AWS::SQS.new

#function to send emails at warning or alert levels
def send_threshold_email(error_level, sensor_type, sensor_label, sensor_value, high_low, email_to = 'support@theburrocompany.com')

ses = AWS::SimpleEmailService.new

        ses.send_email(
          :subject => 'Shrimp Monitor ' + error_level.capitalize + ' - ' + sensor_type + ' ' + high_low,
          :from => 'support@theburrocompany.com',
          :to => email_to,
          :body_text => error_level.capitalize + ' email.',
          :body_html => '<h1>Salinity Low</h1><h2>' + sensor_label.capitalize + ' ' + sensor_value + '</h2>')


end

#send_threshold_email('warning', 'salinity', 'practical salinity', '1000', 'low')


#find the queue & attach to it
queue = sqs.queues.named("shrimpmonproto")

poll_attributes = Array("All")

			#model_class = TankWarningThreshold
			#@tank_warning_thresholds.where(:tank_id => 1).each do |tank_warning_threshold|
                        #2014-07-10 the each process works to grab threshold from table
			#looking for smoother way since only a single row
			#puts TankWarningThreshold.where(:tank_id => 1).distinct.k1_threshold
			TankWarningThreshold.where(:tank_id => 1).distinct.each do |tank_warning_threshold|
			  #puts tank_warning_threshold.k1_threshold
			end
			#puts TankWarningThreshold.where(:tank_id => 1)
                        #puts 'testing'

#attributes has to be capitalized apparently - not in documentation for aws-sdk: i.e.All or SentTimestamp
queue.receive_message(:attributes => ["SentTimestamp"], :limit => 10) {|msg|
	#split message body by comma into sensor_values array
	value = msg.body.split(',')
	#loop through array
	#sensor_values.each{ |value| 
		if value[0] == 'k1'
			k1salinity = K10SensorReading.create( :reading_timestamp => msg.sent_at, :ec_reading_value => value[1], :tds_reading_value => value[2], :sal_reading_value => value[3], :tank_id =>1)  
			
			if value[3].to_i < 18
				send_threshold_email('warning', 'salinity', 'practical salinity', value[3], 'low')
			end

		elsif value[0] == 'k10'
			k10salinity = K1SensorReading.create( :reading_timestamp => msg.sent_at, :ec_reading_value => value[1], :tds_reading_value => value[2], :sal_reading_value => value[3], :tank_id => 1)

			if value[3].to_i < 18
				send_threshold_email('warning', 'salinity', 'practical salinity', value[3], 'low')
                        end
			
			#trying to find out how to get threshold from database
			puts TankWarningThreshold.k10_threshold.where(:tank_id => 1)
			puts 'testing'

		elsif value[0] == 't'
			#puts 'temp'
			tempreading = TempSensorReading.create( :reading_timestamp => msg.sent_at, :temp_reading_value => value[1], :display_type => 'C', :tank_id => 1)			
		elsif value[0] == 'orp'
			#puts 'orp'
			orpreading = OrpSensorReading.create( :reading_timestamp => msg.sent_at, :orp_reading_value => value[1], :tank_id => 1)
		elsif value[0] == 'do'
			#puts 'oxygen'
			doreading = DoSensorReading.create( :reading_timestamp => msg.sent_at, :do_reading_value => value[2], :do_percent_reading => value[1], :tank_id => 1)
		elsif value[0] == 'ph'
			#puts 'ph'
			phreading = PhSensorReading.create( :reading_timestamp => msg.sent_at, :ph_reading_value => value[1], :sensor_id => 1234, :tank_id => 1)
		end

}

#end
