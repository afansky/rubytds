class LandingController < ApplicationController
  def land
    configuration = TDS::Configuration.find_by_id(params[:id])

    render :text => 'Not found', :status => :not_found and return unless configuration

    redirect_to configuration.redirect_url
  end
end