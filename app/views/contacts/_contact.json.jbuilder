json.extract! contact, :id, :name, :address, :email, :created_at, :updated_at
json.url contact_url(contact, format: :json)
