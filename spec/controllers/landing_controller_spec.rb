require 'spec_helper'

describe LandingController do
  it 'accepts a request for the existing landing' do
    configuration = TDS::Configuration.create(:redirect_url => 'http://redirect.com')
    get :land, {:id => configuration.id}
    response.should redirect_to configuration.redirect_url
  end

  it 'returns 404 for unknown id' do
    get :land, {:id => 707}
    response.response_code.should == 404
  end
end