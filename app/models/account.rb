class Account < ActiveRecord::Base
  belongs_to :user, dependent: :destroy

	mount_uploader :picture, ProfileUploader
end
