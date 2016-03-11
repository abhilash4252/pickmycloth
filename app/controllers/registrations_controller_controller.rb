class RegistrationsControllerController < Devise::RegistrationsController

  private
  def sign_up_params
    params.require(:customer).permit(:firstname,:lastname, :email, :password, :password_confirmation, :phonenumber, :address)
  end

  def account_update_params
    params.require(:user).permit(:firstname,:lastname, :email, :password, :password_confirmation, :phonenumber, :address)
  end
end
