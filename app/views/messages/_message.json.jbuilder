json.extract! message, :id, :content, :chat_id, :user_id, :created_at, :updated_at
json.url message_url(message, format: :json)
