class UsersController < ApplicationController
	def index
		if user_signed_in? 
			@users =  User.paginate(page: params[:page], per_page: 10).all
		else
			redirect_to root_path, alert: "Debes iniciar sesión"
		end
	end
end