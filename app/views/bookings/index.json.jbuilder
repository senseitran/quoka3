json.array!(@bookings) do |booking|
  json.extract! booking, :id, :date, :time, :space_id
  json.url booking_url(booking, format: :json)
end
