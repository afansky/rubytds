require 'spec_helper'

describe Visitor do
  it 'can be instantiated' do
    visitor = Visitor.new
    visitor.should be_an_instance_of(Visitor)
  end

  it 'initializes ip address and referer' do
    visitor = Visitor.new(:ip_address => '192.168.1.1', :referer => 'http://google.com')

    visitor.ip_address.should eq('192.168.1.1')
    visitor.referer.should eq('http://google.com')
  end

  it 'can be found by configuration id' do
    configuration = TDS::Configuration.create(redirect_url: 'http://test.com')
    visitor = Visitor.create(:ip_address => '127.0.0.1', :referer => 'http://localhost')
    configuration.visitors << visitor

    Visitor.find_all_by_configuration_id(configuration.id).size.should eq(1)
  end
end
