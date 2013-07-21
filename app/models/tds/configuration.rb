class TDS::Configuration < ActiveRecord::Base
  attr_accessor :redirect_url
  attr_accessible :redirect_url
end


