class LocationsController < ApplicationController
  def index
    Location.order('id ASC').reorder('name DESC')
    @q = Location.ransack(params[:q])
    @locations = @q.result

    # @locations = @q.result.includes(:category)

    end
end
