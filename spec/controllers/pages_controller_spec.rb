require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      # debugger
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end