require 'spec_helper'

describe TDS::Configuration do
  it 'can be instantiated' do
    TDS::Configuration.new('').should be_an_instance_of(TDS::Configuration)
  end

  it 'initializes redirect url and landing url' do
    configuration = TDS::Configuration.new(:redirect_url => 'http://google.com', :landing_url => 'http://land.com')
    configuration.redirect_url.should eq('http://google.com')
    configuration.landing_url.should eq('http://land.com')
  end

  it 'saves redirect url to database' do
    configuration = TDS::Configuration.create(redirect_url:'http://test.com')

    found = TDS::Configuration.find_by_redirect_url 'http://test.com'
    found.should_not be_nil
  end
end