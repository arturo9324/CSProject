class Users::RegistrationsController < Devise::RegistrationsController
	before_action :set_user, only: [:destroy]

	def index
	end

	def new
		@user = User.new
	end

	def edit
		super
	end

	def destroy
		@d_user.destroy
		redirect_to :index, notice: "Se ha eliminado correctamente"
	end


	private
	def sign_up_params
    	params.require(:user).permit(:name, :phone, :email, :rol_user_id, :password, :password_confirmation)
  	end

  	def account_update_params
    	params.require(:user).permit(:name, :phone, :email, :rol_user_id, :password, :password_confirmation, :current_password)
  	end

	def set_user
		@d_user = User.find_by_id(params[:id_user])
		if @d_user.nil?
			redirect_to :index, alert: "El usuario no existe"
		end
	end

end