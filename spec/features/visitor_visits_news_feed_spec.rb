require 'rails_helper'

feature 'visitor visits newsfeed page' do
  scenario 'and searches for a category' do
    stub_news_feed(headline: { title: 'Tech Press Release' })

    visit news_feed_index_path
    fill_in 'category', with: 'health'
    click_button 'Search'

    expect(page).to have_content('Tech Press Release')
  end
end

