class RegistrationsController < Devise::Registrations Controller
  before_action :authenticate_user!

  # private
  #
  # def sign_up_params
  #   params.require(:user).permit(:email, :password, :password_confirmation)
  # end
  #
  # def account_update_params
  #   params.require(:user).permit(:email, :password, :password_confirmation, :current_password)
  # end

end
