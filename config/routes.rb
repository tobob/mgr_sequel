Rails.application.routes.draw do
  resources :animes

  resources :comments
  resources :posts
end
