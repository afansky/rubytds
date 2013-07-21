class ConfigurationsController < ApplicationController
  def index
    @configurations = TDS::Configuration.all
    @configuration = TDS::Configuration.new
  end

  def create
    @configuration = TDS::Configuration.new(params[:tds_configuration])
    @configuration.save

    @configurations = TDS::Configuration.all

    render :index
  end
end
