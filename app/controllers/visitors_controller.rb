class VisitorsController < ApplicationController
  def show_by_configuration
    id = params[:id]
    @visitors = Visitor.find_all_by_configuration_id(id)

    render :index
  end
end