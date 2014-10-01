class Account < ActiveRecord::Base
  belongs_to :user

	mount_uploader :picture, ProfileUploader
end
