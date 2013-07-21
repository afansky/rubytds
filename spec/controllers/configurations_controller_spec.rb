require 'spec_helper'

describe ConfigurationsController do
  describe 'GET index' do
    it 'loads configurations from database' do
      get :index
      assigns(:configurations).should_not be_nil
    end
  end

  describe 'POST create' do
    it 'creates a configuration entry' do
      post :create, :tds_configuration => {:redirect_url => 'google.com'}
      response.should redirect_to :action => :index
    end
  end
end