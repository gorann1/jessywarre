ActiveAdmin.register Location do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :zone_id, :country_id, :region_id, :category_id, :type_id, :name, :lat, :lng, :mindepth, :maxdepth, :visibility, :currents, :is_spec, :desc
  #
  # or
  #
  # permit_params do
  #   permitted = [:zone_id, :country_id, :region_id, :category_id, :type_id, :name, :lat, :lng, :mindepth, :maxdepth, :visibility, :currents, :is_spec, :desc]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    id_column
    column :Name do |location|
      truncate(location.name, length: 50)
    end
    column :Country do |location|
      truncate(location.country.name, length: 50)
    end
    column :Region do |location|
      truncate(location.region.name, length: 50)
    end
    column :Desc do |location|
      truncate(location.desc, length: 50)
    end
    actions
  end

  permit_params :zone_id, :country_id, :region_id, :category_id, :type_id, :name, :lat, :lng, :mindepth, :maxdepth, :visibility, :currents, :is_spec, :gps, :desc


end