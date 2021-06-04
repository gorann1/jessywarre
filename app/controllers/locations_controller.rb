class LocationsController < ApplicationController
  layout 'location'

  def index
    #Location.order('id ASC').reorder('name DESC')
    @q = Location.ransack(params[:q])
    @q.sorts = ['name asc', 'created_at desc'] if @q.sorts.empty?
    @locations = @q.result
    @pagy, @locations = pagy(@q.result, items: 12)
    # @locations = @q.result.includes(:category)
    @hash = Gmaps4rails.build_markers(@locations) do |location, marker|
      marker.lat location.lat
      marker.lng location.lng
    end
  end

  def show
    @location = Location.find(params[:id])
    @hash = Gmaps4rails.build_markers(@location) do |location, marker|
      marker.lat location.lat
      marker.lng location.lng
    end

  end
end
