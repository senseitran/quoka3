json.array!(@requests) do |request|
  json.extract! request, :id, :status, :seeker_id, :owner_id
  json.url request_url(request, format: :json)
end
