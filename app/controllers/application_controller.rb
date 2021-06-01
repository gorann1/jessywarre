class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include CurrentUserConcern
  include Pagy::Backend



  def authenticate_active_admin_user!
    authenticate_user!
    unless current_user.superadmin?
      flash[:alert] = "Unauthorized Access!"
      redirect_to root_path
    end
  end
end
