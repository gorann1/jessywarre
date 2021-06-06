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
    column :main_image do |location|
      image_tag url_for(location.main_image.variant(resize_to_limit: [25,25]))
    end
    actions
  end

  permit_params :zone_id, :country_id, :region_id, :category_id, :type_id, :name, :lat, :lng, :mindepth, :maxdepth, :visibility, :currents, :main_image, :is_spec, :gps, :desc


  form do |f| #This is formtastic form builder
  f.semantic_errors # shows errors on :base
  f.inputs          # builds an input field for every attribute
  f.inputs do
    f.input :main_image, as: :file
  end
  f.input :desc, as: :quill_editor, input_html: { data:
                                                    { options:
                                                        { modules:
                                                            { toolbar:
                                                                [%w[bold italic underline strike],
                                                                 %w[blockquote code-block],
                                                                 [{ 'list': 'ordered' }, { 'list': 'bullet' }],
                                                                 [{ 'align': [] }],
                                                                 ['link'],
                                                                 [{ 'size': ['small', false, 'large', 'huge'] }],
                                                                 [{ 'header': [1, 2, 3, 4, 5, 6, false] }],
                                                                 [{ 'indent': '-1' }, { 'indent': '+1' }],
                                                                 [{ 'direction': 'rtl' }],
                                                                 [{ 'color': [] }, { 'background': [] }],
                                                                 [{ 'font': [] }],
                                                                 ['clean'],
                                                                 ['image'],
                                                                 ['video']] },
                                                          theme: 'snow' } } }, label: 'The content of the location description'
  f.input :images, as: :file, input_html: { multiple: true }, label: 'Add illustrations to the article'
  f.actions         # adds the 'Submit' and 'Cancel' buttons
  end
end
