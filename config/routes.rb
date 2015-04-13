Rails.application.routes.draw do
  resources :songs
  devise_for :users

  root "static_pages#home"
end
