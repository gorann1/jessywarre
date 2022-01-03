class RegionsController < ApplicationController
  def index
    @regions = Region.all
    render json: @regions
  end

  def for_regionid
    @region = Region.find_all_by_country_id( params[:id]).sort_by{ |k| k['name'] }
    respond_to do |format|
      format.json  { render :json => @regions }
    end
  end
end
