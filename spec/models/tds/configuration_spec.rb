require 'spec_helper'

describe TDS::Configuration do
  it 'can be instantiated' do
    TDS::Configuration.new('').should be_an_instance_of(TDS::Configuration)
  end

  it 'initializes redirect url' do
    configuration = TDS::Configuration.new(:redirect_url => 'http://google.com')
    configuration.redirect_url.should eq('http://google.com')
  end
end