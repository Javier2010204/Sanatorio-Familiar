json.extract! sale_detail, :id, :name_item, :qty, :subtotal, :created_at, :updated_at
json.url sale_detail_url(sale_detail, format: :json)
