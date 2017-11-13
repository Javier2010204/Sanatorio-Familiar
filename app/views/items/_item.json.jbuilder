json.extract! item, :id, :code, :description, :brand_id, :unit_id, :category_id, :strock, :min_stock, :price, :created_at, :updated_at
json.url item_url(item, format: :json)
