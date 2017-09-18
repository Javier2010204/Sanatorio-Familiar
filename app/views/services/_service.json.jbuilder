json.extract! service, :id, :code, :name, :price, :category_id, :description, :created_at, :updated_at
json.url service_url(service, format: :json)
