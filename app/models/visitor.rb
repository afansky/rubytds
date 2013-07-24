class Visitor < ActiveRecord::Base
  belongs_to :configuration
  attr_accessible :ip_address, :referer
  validates :ip_address, :presence => true
end
