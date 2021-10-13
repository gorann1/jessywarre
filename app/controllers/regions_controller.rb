class RegionsController < ApplicationController

  if params[:country].present?
    @regions = Country.find(params[:country]).regions
  else
    @regions = Region.all
  end
  if request.xhr?
    respond_to do |format|
      format.json {
        render json: {regions: @regions}
      }
    end
  end
end
