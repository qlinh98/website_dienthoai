json.extract! product, :id, :pro_name, :quantity, :price_input, :price_output, :img_1, :img_2, :img_3, :category_pro_id, :created_at, :updated_at
json.url product_url(product, format: :json)
