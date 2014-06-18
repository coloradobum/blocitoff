require 'spec_helper'

describe TodosController do

  describe 'GET #index' do
    it "renders the index view" do
      sign_in :user, @user
      get :index
      expect(response).to render_template :index
    end
  end


end
