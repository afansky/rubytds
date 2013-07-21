require 'spec_helper'

describe ConfigurationController do
  describe 'GET index' do
    it 'loads configurations from database' do
      get :index
      assigns(:configurations).should_not be_nil
    end
  end
end