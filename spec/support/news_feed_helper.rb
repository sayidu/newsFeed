require 'ostruct'

module NewsFeedHelper
  def stub_news_feed(headline: default_headline)
    headline = format_headline(headline)
    allow_any_instance_of(News).to receive(:get_top_headlines).and_return([headline])
  end

  def format_headline(headline)
    return OpenStruct.new(headline) unless headline.empty?
  end

  def default_headline
    {
      name: 'JaneNews', url: 'http://localhost:3000/',
      title: 'Top Article', publishedAt: Time.now
    }
  end
end
