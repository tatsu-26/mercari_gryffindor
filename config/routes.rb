Rails.application.routes.draw do
  root to: "products#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :products, only: [:index]
  resources :users, only: [:mypage, :logout] do
    collection do
      get :profile
      get "mypage"
      get "logout"