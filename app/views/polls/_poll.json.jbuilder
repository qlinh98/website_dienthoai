json.extract! poll, :id, :comment, :vote_count, :product_id, :user_id, :created_at, :updated_at
json.url poll_url(poll, format: :json)
