json.array!(@tank_warning_thresholds) do |tank_warning_threshold|
  json.extract! tank_warning_threshold, :id, :tank_id, :ph_threshold, :do_threshold, :orp_threshold, :k1_threshold, :k10_threshold, :temp_threshold
  json.url tank_warning_threshold_url(tank_warning_threshold, format: :json)
end
