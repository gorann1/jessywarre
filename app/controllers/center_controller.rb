class CenterController < ApplicationController
  layout 'center'
  def index
    @centers = Center.all
  end

  def show
    @center = Center.find(params[:id])
  end
end
