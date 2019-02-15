json.extract! vehicle, :id, :name, :color, :company_name, :vehicle_image, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
