class NewsFeedController < ApplicationController
  def index
    news_feed = News.new(ENV['NEWS_API_ACCESS_TOKEN'])
    @top_headlines = news_feed.get_top_headlines(
      category: category_params,
      country: 'us'
    )
    render 'index'
  end

  def create
    redirect_to news_feed_index_path(category: category_params)
  end

  def category_params
    params[:category]
  end
end
