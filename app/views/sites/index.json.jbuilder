json.array!(@sites) do |site|
  json.extract! site, :id, :site_name, :site_zip, :company_id
  json.url site_url(site, format: :json)
end
