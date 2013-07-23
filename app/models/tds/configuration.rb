class TDS::Configuration < ActiveRecord::Base
  attr_accessible :redirect_url, :landing_url
  validates :redirect_url, presence: true
  after_create :set_landing_url

  private
  def set_landing_url
    self.update_attributes(:landing_url => "land/#{self.id}")
  end
end


