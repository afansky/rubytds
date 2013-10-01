class TDS::Configuration < ActiveRecord::Base
  has_many :visitors
  attr_accessible :redirect_url, :landing_url
  validates :redirect_url, presence: true
  validates :redirect_url, :format => {:with => /https?/}
  after_create :set_landing_url

  private
  def set_landing_url
    self.update_attributes(:landing_url => "land/#{self.id}")
  end
end


