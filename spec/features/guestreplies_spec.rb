require 'rails_helper'

RSpec.describe "Guestreplies", :type => :request do
  describe "GET /guestreplies" do
    it "works! (now write some real specs)" do
      get guestreplies_path
      expect(response).to have_http_status(200)
    end
  end
end
