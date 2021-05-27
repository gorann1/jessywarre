class CentersController < ApplicationController
  layout 'center'

  def index
    Center.order('id ASC').reorder('name DESC')
    @q = Center.ransack(params[:q])
    @centers = @q.result
  end

  def show
    @center = Center.find(params[:id])
  end
end
