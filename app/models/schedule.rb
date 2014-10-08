class Schedule < ActiveRecord::Base
  belongs_to :space, dependent: :destroy
  after_create :add_defaults 

	def add_defaults
  	self.mon_start = 0000 if mon_start == nil
  	self.tue_start = 0000 if tue_start == nil
  	self.wed_start = 0000 if wed_start == nil
  	self.thu_start = 0000 if thu_start == nil
  	self.fri_start = 0000 if fri_start == nil
  	self.sat_start = 0000 if sat_start == nil
  	self.sun_start = 0000 if sun_start == nil
    self.mon_end = 2400 if mon_end == nil
    self.tue_end = 2400 if tue_end == nil
    self.wed_end = 2400 if wed_end == nil
    self.thu_end = 2400 if thu_end == nil
    self.fri_end = 2400 if fri_end == nil
    self.sat_end = 2400 if sat_end == nil
    self.sun_end = 2400 if sun_end == nil
    self.save
	end
end
