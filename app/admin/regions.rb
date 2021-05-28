ActiveAdmin.register Region do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :zone_id, :country_id, :name, :desc
  #
  # or
  #
  # permit_params do
  #   permitted = [:zone_id, :country_id, :name, :desc]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params :zone_id, :country_id, :name, :desc

end
