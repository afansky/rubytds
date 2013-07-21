class ConfigurationController < ApplicationController
  def index
    @configurations = TDS::Configuration.all
  end
end
