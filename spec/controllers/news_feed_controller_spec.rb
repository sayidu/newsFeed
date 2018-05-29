require 'rails_helper'

RSpec.describe NewsFeedController, type: :controller do
  describe 'GET #index' do
    it 'returns index template' do
      stub_news_feed

      get :index

      expect(response).to render_template(:index)
    end
  end

  describe 'POST #create' do
    it 'redirect to index template' do
      stub_news_feed

      post :create, params: category_params

      expect(response).to redirect_to(news_feed_index_path(category_params))
    end
  end

  def category_params
    { category: 'health' }
  end
end
