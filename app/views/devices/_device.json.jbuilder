json.extract! device, :id, :imei_number, :device_type, :device_color, :device_notes, :customer_id, :device_version_id, :created_at, :updated_at
json.url device_url(device, format: :json)
