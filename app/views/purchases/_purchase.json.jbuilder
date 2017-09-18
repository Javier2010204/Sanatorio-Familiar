json.extract! purchase, :id, :number, :date, :price, :quantity, :item_id, :created_at, :updated_at
json.url purchase_url(purchase, format: :json)
