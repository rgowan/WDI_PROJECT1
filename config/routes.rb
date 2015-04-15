Rails.application.routes.draw do
  resources :songs
  devise_for :users
  resources :comments, only: [:create, :destroy]
  resources :users
  get "tags/:tag", to: "songs#index", as: :tag
  root "static_pages#home"
end
