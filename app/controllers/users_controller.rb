class UsersController < ApplicationController
	before_action :set_user, only: [:destroy]
	before_action :authenticate_user
	def index
		if user_signed_in? 
			@users =  User.paginate(page: params[:page], per_page: 10).all
		else
			redirect_to root_path, alert: "Debes iniciar sesión"
		end
	end

	def destroy
		@d_user.destroy
		redirect_to users_path, notice: "Se ha eliminado correctamente"
	end

	private

	def set_user
		@d_user = User.find_by_id(params[:id])
		if @d_user.nil?
			redirect_to users_path, alert: "El usuario no existe"
			return
		end
	end
end