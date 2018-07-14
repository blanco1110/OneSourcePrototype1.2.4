json.extract! repair_order, :id, :repair_order_date, :repair_order_subtotal, :repair_order_tax, :repair_order_total, :repair_order_accessories, :repair_order_notes, :repair_order_status_id, :repair_order_status_date, :created_at, :updated_at
json.url repair_order_url(repair_order, format: :json)
