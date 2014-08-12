Rails.application.routes.draw do
  resources :high_scores

  resources :comments
  resources :posts
end
