class TDS::Configuration < ActiveRecord::Base
  attr_accessible :redirect_url, :landing_url
  validates :redirect_url, presence: true
end


