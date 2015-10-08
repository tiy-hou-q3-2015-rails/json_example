json.contacts @contacts do |contact|
  json.id contact.id
  json.first_name contact.first_name
  json.last_name contact.last_name
  json.full_name contact.full_name
  json.url contact_path(id: contact.id)
  json.profile_url attachment_url(contact, :profile, :fill, 500, 500, format: "png")
end
