Rails.application.routes.draw do
  root to: "idioms#index"
  devise_for :users
  resources :idioms
  resources :users
  resources :comments
  resources :team, only: [:show]
  resources :faq, only: [:show]
  resources :idioms do
    resources :likes
  end
end
