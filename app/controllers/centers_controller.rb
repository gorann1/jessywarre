class CentersController < ApplicationController
  layout 'center'

  def index
    #Center.order('id ASC').reorder('name DESC')
    #@q = Center.ransack(params[:q])
    #@q.sorts = ['name asc', 'created_at desc'] if @q.sorts.empty?
    #@centers = Center.where("name LIKE ?", "%#{params[:search]}%")
    #@centers = @q.result
    #@pagy, @centers = pagy(@q.result, items: 18)
    #@pagy, @centers = pagy(@q.result)
    #@pagy, @centers = pagy Center.all
    @centers = set_page_and_extract_portion_from Center.all, per_page: [10]
=begin

    respond_to do |format|
      format.html
      format.json {
        render json: { entries: render_to_string(partials: "centers", formats: [:html]), pagination: view_context.pagy_nav(@pagy) }
      }
    end
=end

  end

  def show
    @center = Center.find(params[:id])
  end
end
