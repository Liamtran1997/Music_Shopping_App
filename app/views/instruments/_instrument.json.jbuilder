json.extract! instrument, :id, :brand, :model, :description, :condition, :color, :title, :price, :name, :created_at, :updated_at
json.url instrument_url(instrument, format: :json)
