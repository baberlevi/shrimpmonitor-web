json.array!(@companies) do |company|
  json.extract! company, :id, :company_name, :company_approver_email
  json.url company_url(company, format: :json)
end
