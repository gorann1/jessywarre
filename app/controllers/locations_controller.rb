class LocationsController < ApplicationController
  def index
    #Location.order('id ASC').reorder('name DESC')
    @q = Location.ransack(params[:q])
    @q.sorts = ['name asc', 'created_at desc'] if @q.sorts.empty?
    @locations = @q.result
    @pagy, @locations = pagy(@q.result, items: 18)

    # @locations = @q.result.includes(:category)

  end

  def show
    @location = Location.find(params[:id])
  end
end
