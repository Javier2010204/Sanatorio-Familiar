json.extract! item, :id, :code, :description, :brand_id, :unit_id, :category_id, :stock, :min_stock, :sale_price, :unit_price, :cost_price, :created_at, :updated_at
json.url item_url(item, format: :json)
