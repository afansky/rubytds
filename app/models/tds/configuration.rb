class TDS::Configuration < ActiveRecord::Base
  attr_accessor :redirect_url

  def initialize(redirect_url)
    @redirect_url = redirect_url
  end
end


