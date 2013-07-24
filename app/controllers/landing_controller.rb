class LandingController < ApplicationController
  def land
    configuration = TDS::Configuration.find_by_id(params[:id])

    redirect_to configuration.redirect_url
  end
end