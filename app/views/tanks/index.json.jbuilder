json.array!(@tanks) do |tank|
  json.extract! tank, :id, :site_id, :site_tank_label, :description
  json.url tank_url(tank, format: :json)
end
