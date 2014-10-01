class RegistrationsController < Devise::RegistrationsController
	protected

	def after_sign_up_path_for(resources)
		edit_account_path(resources.account)
	end
end