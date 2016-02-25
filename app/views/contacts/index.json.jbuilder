json.array!(@contacts) do |contact|
  json.extract! contact, :id, :username, :gender, :email, :tel, :address, :citycode, :subscribe
  json.url contact_url(contact, format: :json)
end
