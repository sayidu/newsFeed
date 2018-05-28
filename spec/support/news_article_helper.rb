require 'ostruct'

module NewsArticleHelper
  def stub_article_headline(headline: default_headline)
    allow_any_instance_of(News).to receive(:unknown).and_return([headline])
  end

  def default_headline
    OpenStruct.new(
      name: 'JaneNews', url: 'http://localhost:3000/'
    )
  end
end
