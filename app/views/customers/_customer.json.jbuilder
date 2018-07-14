json.extract! customer, :id, :customer_fname, :customer_lname, :customer_email, :customer_phone, :customer_call, :customer_text, :customer_zip, :created_at, :updated_at
json.url customer_url(customer, format: :json)
