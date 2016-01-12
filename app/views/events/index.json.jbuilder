json.array!(@events) do |event|
  json.extract! event, :id, :name, :amount, :comment
  json.url event_url(event, format: :json)
end
