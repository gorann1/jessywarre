class CentersController < ApplicationController
  layout 'center'

  def index
    #Center.order('id ASC').reorder('name DESC')
    @q = Center.ransack(params[:q])
    @q.sorts = ['name asc', 'created_at desc'] if @q.sorts.empty?
    @centers = Center.where("name LIKE ?", "%#{params[:search]}%")
    @centers = @q.result
    @pagy, @centers = pagy(@q.result, items: 18)

  end

  def show
    @center = Center.find(params[:id])
  end
end
