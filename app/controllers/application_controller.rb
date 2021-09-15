class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include CurrentUserConcern
  include Pagy::Backend
  include Locale

 # around_action :switch_locale

=begin
  def switch_locale(&action)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &action)
  end
=end

  #
  # around_action :switch_locale
  #
  # def switch_locale(&action)
  #   locale = params[:locale] || I18n.default_locale
  #   I18n.with_locale(locale, &action)
  # end

  def authenticate_active_admin_user!
    authenticate_user!
    unless current_user.superadmin?
      flash[:alert] = "Unauthorized Access!"
      redirect_to root_path
    end
  end
end
