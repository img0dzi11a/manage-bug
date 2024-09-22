# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end


  def create #handle login form submission
    redirect_to dashboard_path
  end



  # DELETE /resource/sign_out
  def destroy
    sign_out(current_user)
    flash[:success] = "Logged Out successfully"
    redirect_to login_path
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
