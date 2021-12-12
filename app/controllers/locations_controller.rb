class LocationsController < ApplicationController
  layout 'location'

  def index
    #Location.order('id ASC').reorder('name DESC')
    @q = Location.ransack(params[:q])
    @q.sorts = ['name asc', 'created_at desc'] if @q.sorts.empty?
    @locations = @q.result.includes(:countries, :regions)

    #@regions = @regions.where(country_id: params[:country_id]) if params[:country_id].present?
    if params[:country_id].present?
      @regions = Country.find(params[:country_id]).regions
    else
      @regions = Region.all
    end

    if request.xhr?
      respond_to do |format|
        format.json {
          render json: {tasks: @tasks}
        }
      end
    end

    if request.xhr?
      respond_to do |format|
        format.json {
          render json: {locations: @locations}
        }
      end
    end
    @pagy, @locations = pagy(@q.result, items: 12)
    # @locations = @q.result.includes(:category)
    @hash = Gmaps4rails.build_markers(@locations) do |location, marker|
      marker.lat location.lat
      marker.lng location.lng
    end
  end

  def getdata
    # this contains what has been selected in the first select box
    @countries = params[:first_select]

    # we get the data for selectbox 2
    @regions = Region.where(:country_id => @countries).all

    # render an array in JSON containing arrays like:
    # [[:id1, :name1], [:id2, :name2]]
    render :json => @regions.map{|c| [c.id, c.name]}
  end

  def show
    @location = Location.find(params[:id])
    @hash = Gmaps4rails.build_markers(@location) do |location, marker|
      marker.lat location.lat
      marker.lng location.lng
    end

  end



end
