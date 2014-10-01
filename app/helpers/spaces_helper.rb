module SpacesHelper
	def booking_details(booking)
		booking.user.account.first_name.to_s + " " + booking.self_booking.to_s + " " + booking.date.to_s + " " + booking.start_time.to_s + " " +  booking.end_time.to_s
	end
end