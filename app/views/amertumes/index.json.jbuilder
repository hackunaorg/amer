json.array!(@amertumes) do |amertume|
  json.extract! amertume, :id, :title, :content, :user_id
  json.url amertume_url(amertume, format: :json)
end
