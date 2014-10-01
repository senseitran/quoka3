json.array!(@spaces) do |space|
  json.extract! space, :id, :number, :street, :suburb, :postcode, :state, :country, :type, :schedule, :status, :account_id
  json.url space_url(space, format: :json)
end
