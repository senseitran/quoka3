class User < ActiveRecord::Base
has_one :account
has_many :bookings
has_many :spaces

  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :add_account 

  def add_account
  	self.account = Account.new
  end

end
