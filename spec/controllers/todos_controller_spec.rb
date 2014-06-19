require 'spec_helper'

describe TodosController do

  describe 'GET #index' do
    it "renders the index view" do
      create_and_sign_in_user 'user@test.com', 'password'
      get :index
      expect(response).to render_template :index
    end
  end
end
