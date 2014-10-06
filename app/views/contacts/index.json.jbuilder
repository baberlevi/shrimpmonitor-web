json.array!(@contacts) do |contact|
  json.extract! contact, :id, :contact_name, :contact_email, :contact_phone, :sms, :contact_email2, :company_id
  json.url contact_url(contact, format: :json)
end
