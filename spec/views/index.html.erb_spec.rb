require 'rails_helper'

describe 'news_feed/index.html.erb' do
  context 'when there are news articles' do
    it 'renders the articles' do
      render_news_feed headline: { title: 'Bravery Article' }

      expect(rendered).to have_content('Bravery Article')
    end
  end

  context 'when there are no news articles' do
    it 'displays relevant message' do
      render_news_feed headline: []

      expect(rendered).to have_content(
        'There are no top headlines for this category'
      )
    end
  end

  def render_news_feed(headline:)
    headline = [OpenStruct.new(headline)] unless headline.empty?
    assign :top_headlines, headline
    render template: 'news_feed/index'
  end
end
