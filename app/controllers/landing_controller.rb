class LandingController < ApplicationController
  def land
    configuration = TDS::Configuration.find_by_id(params[:id])

    render :text => 'Not found', :status => :not_found and return unless configuration

    configuration.visitors.create(:ip_address => request.remote_ip, :referer => request.referer)

    redirect_to configuration.redirect_url
  end
end