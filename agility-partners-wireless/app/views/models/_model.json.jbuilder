json.extract! model, :id, :name, :quantity_on_hand, :created_at, :updated_at
json.url model_url(model, format: :json)
