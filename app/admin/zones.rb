ActiveAdmin.register Zone do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :desc
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :desc]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params :name, :desc

  index do
    id_column
    column :Name do |zone|
      truncate(zone.name, length: 50)
    end
    column :Desc do |zone|
      truncate(zone.desc, length: 50)
    end
    actions
  end

end
