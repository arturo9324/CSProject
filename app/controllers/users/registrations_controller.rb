class Users::RegistrationsController < Devise::RegistrationsController

	def new
		@user = User.new
	end

	def edit
		super
	end

	private
	def sign_up_params
    	params.require(:user).permit(:name, :phone, :email, :rol_user_id, :password, :password_confirmation)
  	end

  	def account_update_params
    	params.require(:user).permit(:name, :phone, :email, :rol_user_id, :password, :password_confirmation, :current_password)
  	end

end