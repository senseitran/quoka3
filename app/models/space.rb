class Space < ActiveRecord::Base
  belongs_to :user
  has_many :bookings
  has_one :schedule  

	validates :number, :street, :suburb, :space_type, presence: true

  geocoded_by :full_street_address
  after_validation :geocode

  def full_street_address
  	[street, suburb, state, country].compact.join(', ')
  end

  after_create :add_schedule, :set_location, :capitalise

  def add_schedule
  	self.schedule = Schedule.new
  end

  def set_location
    self.state = 'NSW'
    self.country = 'Australia'
    self.save
  end 

  def capitalise
    self.street.titleize
    self.suburb.titleize
  end  

end

