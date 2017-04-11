json.extract! item, :id, :name, :price, :category, :created_at, :updated_at
json.url item_url(item, format: :json)