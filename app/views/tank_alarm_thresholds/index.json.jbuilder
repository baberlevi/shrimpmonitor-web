json.array!(@tank_alarm_thresholds) do |tank_alarm_threshold|
  json.extract! tank_alarm_threshold, :id, :tank_id, :ph_threshold, :do_threshold, :orp_threshold, :k1_threshold, :k10_threshold, :temp_threshold
  json.url tank_alarm_threshold_url(tank_alarm_threshold, format: :json)
end
