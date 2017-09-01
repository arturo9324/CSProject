class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :login?

  public
  def login?
  	if user_signed_in?
  		@log_user = current_user
  	end
  end

  def authenticate_user
  	redirect_to(new_user_session_path, alert: "Tienes que iniciar sesión") unless user_signed_id?
  end

end
