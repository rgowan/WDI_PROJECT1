Rails.application.routes.draw do
  resources :songs
  devise_for :users
  resources :comments, only: [:create]
  resources :users
  root "static_pages#home"
end
