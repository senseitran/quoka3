class Space < ActiveRecord::Base
  belongs_to :user
  has_many :bookings
  has_many :schedules  

	validates :street, :suburb, :state, presence: true

  geocoded_by :full_street_address
  after_validation :geocode

  def full_street_address
  	[street, suburb, postcode, state, country].compact.join(', ')
  end

end
