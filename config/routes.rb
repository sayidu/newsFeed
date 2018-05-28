Rails.application.routes.draw do
  resources :news_feed, only: %i[index create]
end
