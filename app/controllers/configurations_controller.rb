class ConfigurationsController < ApplicationController
  def index
    @configurations = TDS::Configuration.all
    @configuration = TDS::Configuration.new
  end

  def create
    @configuration = TDS::Configuration.new(params[:tds_configuration])
    if @configuration.save
      @configuration = TDS::Configuration.new
    end

    @configurations = TDS::Configuration.all

    render :index
  end
end
