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
      response.should be_success
    end
  end

  describe 'DELETE delete' do
    it 'deletes a configuration' do
      configuration = TDS::Configuration.create(:redirect_url => 'http://google.com')
      expect {
        delete :destroy, :id => configuration.id
      }.to change(TDS::Configuration, :count).by(-1)
    end
  end
end