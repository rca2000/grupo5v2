class RegistrationsRestaurantController < Devise::RegistrationsController

      private

  def sign_up_params
    params.require(:restaurant).permit(:name, :district_id, :telefono, :direccion, :email, :password, :password_confirmation, :avatar)
    
  end

  def account_update_params
    
    params.require(:restaurant).permit(:name, :district_id, :telefono, :direccion, :email, :password, :password_confirmation, :current_password, :avatar)
  end
end
