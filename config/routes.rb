Rails.application.routes.draw do
  resources :animes

  resources :high_scores

  resources :comments
  resources :posts
end
