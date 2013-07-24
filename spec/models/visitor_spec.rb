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
end
