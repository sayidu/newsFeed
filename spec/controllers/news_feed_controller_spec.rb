require 'rails_helper'

RSpec.describe NewsFeedController, type: :controller do
  describe 'GET #index' do
    it 'return index template' do
      stub_news_feed

      get :index

      expect(response).to render_template(:index)
    end
  end
end
