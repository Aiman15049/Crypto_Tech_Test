require 'rest-client'
require 'json'
require './app/controllers/gbp_controller.rb'

RSpec.describe GbpController, type: :controller do

  describe 'GET euro' do
    before do
      get :sterling
    end
    it 'should render with status code 200' do
      expect(response.status).to eq 200
    end
  end
end
