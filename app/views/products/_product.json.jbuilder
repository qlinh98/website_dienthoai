json.extract! product, :id, :pro_name, :quantity, :price_input, :price_output, :description, :img_1, :img_2, :img_3, :created_at, :updated_at
json.url product_url(product, format: :json)
