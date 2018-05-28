Rails.application.routes.draw do
  root 'news_feed#index'

  resources :news_feed, only: %i[index create]
end
