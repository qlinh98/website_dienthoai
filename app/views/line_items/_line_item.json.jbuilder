json.extract! line_item, :id, :name_pro, :quantity, :money, :total, :product_id, :order_id, :created_at, :updated_at
json.url line_item_url(line_item, format: :json)
